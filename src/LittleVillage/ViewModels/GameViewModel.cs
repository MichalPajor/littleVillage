using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using LittleVillage.Core.Game;
using LittleVillage.Core.Scenes;
using LittleVillage.Core.Story;
using LittleVillage.Messages;
using LittleVillage.Services;
using Microsoft.Extensions.Logging;

namespace LittleVillage.ViewModels;

/// <summary>Ekran gry: tło sceny, okno fabuły z wyborami, ekwipunek.</summary>
public sealed partial class GameViewModel(
    IGameSession session,
    INavigationService navigation,
    IDialogService dialogs,
    IMessenger messenger,
    IThemeService theme,
    ILogger<GameViewModel> logger) : ViewModelBase
{
    private StoryPage? _shownPage;
    private IReadOnlyList<InventoryItem>? _knownInventory;
    private IReadOnlyList<JournalEntry>? _knownJournal;

    public ObservableCollection<StoryBlock> Blocks { get; } = [];

    public ObservableCollection<ChoiceViewModel> Choices { get; } = [];

    public ObservableCollection<InventoryItem> InventoryItems { get; } = [];

    public ObservableCollection<JournalEntry> JournalEntries { get; } = [];

    [ObservableProperty]
    public partial SceneBackground? Scene { get; set; }

    [ObservableProperty]
    public partial string? Question { get; set; }

    [ObservableProperty]
    [NotifyPropertyChangedFor(nameof(HasChoices), nameof(CanAdvance), nameof(ShowChoiceHint), nameof(IsDeath))]
    [NotifyCanExecuteChangedFor(nameof(AdvanceCommand))]
    public partial PageEnding Ending { get; set; }

    [ObservableProperty]
    [NotifyPropertyChangedFor(nameof(CanAdvance), nameof(ShowChoiceHint))]
    [NotifyCanExecuteChangedFor(nameof(AdvanceCommand))]
    public partial ChoiceViewModel? SelectedChoice { get; set; }

    /// <summary>Okno fabuły zwinięte w prawo — widać całe tło.</summary>
    [ObservableProperty]
    public partial bool IsPanelCollapsed { get; set; }

    [ObservableProperty]
    public partial bool IsInventoryOpen { get; set; }

    [ObservableProperty]
    public partial bool HasInventoryItems { get; set; }

    [ObservableProperty]
    public partial bool IsJournalOpen { get; set; }

    [ObservableProperty]
    public partial bool HasJournalEntries { get; set; }

    /// <summary>Tryb ciemny okien z tekstem (czarne tło, jasne litery).</summary>
    [ObservableProperty]
    public partial bool IsDarkMode { get; set; }

    public bool HasChoices => Ending == PageEnding.Choices;

    /// <summary>Przycisk „Dalej” pojawia się po wybraniu opcji albo od razu, gdy scena nie ma wyborów.</summary>
    public bool CanAdvance => Ending != PageEnding.Death && (Ending != PageEnding.Choices || SelectedChoice is not null);

    /// <summary>Bohater zginął — zamiast „Dalej” przycisk powrotu do ostatniego zapisu.</summary>
    public bool IsDeath => Ending == PageEnding.Death;

    public bool ShowChoiceHint => Ending == PageEnding.Choices && SelectedChoice is null;

    public override Task OnAppearingAsync()
    {
        IsDarkMode = theme.IsDark;

        if (session.CurrentPage is { } page && !ReferenceEquals(page, _shownPage))
        {
            Show(page);
            _knownInventory = session.GetInventory();
            _knownJournal = session.GetJournal();
        }

        return Task.CompletedTask;
    }

    [RelayCommand(CanExecute = nameof(CanAdvance), AllowConcurrentExecutions = false)]
    private async Task AdvanceAsync()
    {
        try
        {
            if (Ending == PageEnding.End)
            {
                await session.FinishAsync();
                await navigation.GoBackAsync();
                return;
            }

            // Zmiany z poprzedniej strony, do których gracz nie zdążył doczytać, pokazujemy teraz — na nowej stronie.
            AnnounceInventoryChange();
            // Zmiany z nowej strony pokaże widok, gdy gracz doczyta do końca strony (albo do akapitu z tagiem # tobolek).
            Show(await session.AdvanceAsync(SelectedChoice?.Choice.Index));
        }
        catch (Exception exception)
        {
            logger.LogError(exception, "Błąd podczas przechodzenia dalej w fabule.");
            await dialogs.AlertAsync("Coś poszło nie tak", exception.Message);
        }
    }

    /// <summary>Po śmierci: wczytuje stronę z decyzją, która do niej doprowadziła.</summary>
    [RelayCommand(AllowConcurrentExecutions = false)]
    private async Task TryAgainAsync()
    {
        try
        {
            Show(await session.ContinueSavedGameAsync());
            _knownInventory = session.GetInventory();
            _knownJournal = session.GetJournal();
        }
        catch (Exception exception)
        {
            logger.LogError(exception, "Nie udało się wczytać ostatniego zapisu po śmierci.");
            await dialogs.AlertAsync("Coś poszło nie tak", exception.Message);
        }
    }

    [RelayCommand]
    private void TogglePanel() => IsPanelCollapsed = !IsPanelCollapsed;

    [RelayCommand]
    private void ToggleTheme()
    {
        theme.SetDark(!theme.IsDark);
        IsDarkMode = theme.IsDark;
    }

    [RelayCommand]
    private void OpenInventory()
    {
        InventoryItems.Clear();
        foreach (var item in session.GetInventory())
        {
            InventoryItems.Add(item);
        }

        HasInventoryItems = InventoryItems.Count > 0;
        IsInventoryOpen = true;
    }

    [RelayCommand]
    private void CloseInventory() => IsInventoryOpen = false;

    [RelayCommand]
    private void OpenJournal()
    {
        JournalEntries.Clear();
        foreach (var entry in session.GetJournal())
        {
            JournalEntries.Add(entry);
        }

        HasJournalEntries = JournalEntries.Count > 0;
        IsJournalOpen = true;
    }

    [RelayCommand]
    private void CloseJournal() => IsJournalOpen = false;

    private void Show(StoryPage page)
    {
        _shownPage = page;
        if (page.ResetsInventory)
        {
            _knownInventory = session.GetInventory();
        }

        Blocks.Clear();
        foreach (var block in page.Blocks)
        {
            Blocks.Add(block);
        }

        Choices.Clear();
        for (var i = 0; i < page.Choices.Count; i++)
        {
            Choices.Add(new ChoiceViewModel(page.Choices[i], i, Select));
        }

        SelectedChoice = null;
        Question = page.Question;
        Ending = page.Ending;
        Scene = session.Backgrounds.Resolve(page.BackgroundKey);
        IsPanelCollapsed = false;

        messenger.Send(new StoryPageShownMessage(page));
    }

    /// <summary>Gracz doczytał stronę (albo akapit z tagiem <c># tobolek</c>) — teraz pokazujemy zmiany w tobołku i zapiskach.</summary>
    public void AnnounceDeferredChanges() => AnnounceInventoryChange();

    /// <summary>Po przejściu dalej: jeśli coś trafiło do tobołka albo z niego zniknęło, widok to pokaże.</summary>
    private void AnnounceInventoryChange()
    {
        var now = session.GetInventory();
        if (_knownInventory is not null)
        {
            var change = InventoryChange.Between(_knownInventory, now);
            if (!change.IsEmpty)
            {
                messenger.Send(new InventoryChangedMessage(change));
            }
        }

        _knownInventory = now;

        var journal = session.GetJournal();
        if (_knownJournal is not null)
        {
            var notes = JournalChange.Between(_knownJournal, journal);
            if (!notes.IsEmpty)
            {
                messenger.Send(new JournalChangedMessage(notes));
            }
        }

        _knownJournal = journal;
    }

    private void Select(ChoiceViewModel choice)
    {
        foreach (var other in Choices)
        {
            other.IsSelected = ReferenceEquals(other, choice);
        }

        SelectedChoice = choice;
        messenger.Send(new StoryChoiceSelectedMessage());
    }
}
