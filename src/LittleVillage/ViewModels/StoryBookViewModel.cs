using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using LittleVillage.Core.Game;
using LittleVillage.Core.Scenes;
using LittleVillage.Core.Text;
using LittleVillage.Resources.Strings;
using LittleVillage.Services;
using Microsoft.Extensions.Logging;

namespace LittleVillage.ViewModels;

/// <summary>Księga opowieści: rozdziały, od których można zacząć, i odkryte zakończenia.</summary>
public sealed partial class StoryBookViewModel(
    IGameSession session,
    IFullVersionStore store,
    INavigationService navigation,
    IDialogService dialogs,
    ILogger<StoryBookViewModel> logger) : ViewModelBase
{
    private ChapterItem? _pendingChapter;

    public ObservableCollection<ChapterItem> Chapters { get; } = [];

    public ObservableCollection<EndingItem> Endings { get; } = [];

    [ObservableProperty]
    public partial SceneBackground? Scene { get; set; }

    [ObservableProperty]
    public partial string? EndingsSummary { get; set; }

    /// <summary>Czy pytamy gracza o nadpisanie zapisanej gry.</summary>
    [ObservableProperty]
    [NotifyPropertyChangedFor(nameof(IsListVisible))]
    public partial bool IsConfirming { get; set; }

    public bool IsListVisible => !IsConfirming;

    public override async Task OnAppearingAsync()
    {
        IsConfirming = false;
        await session.InitializeAsync();
        Scene = session.Backgrounds.Resolve(null);

        Chapters.Clear();
        var chapters = session.GetChapters();
        for (var i = 0; i < chapters.Count; i++)
        {
            var chapter = chapters[i];
            var available = chapter.Reached && (!chapter.RequiresFullVersion || store.IsUnlocked);
            Chapters.Add(new ChapterItem(
                i == 0 ? AppResources.PrologueNumeral : RomanNumeral.From(i),
                $"{chapter.Name}\n{(chapter.Reached ? chapter.Title : AppResources.Undiscovered)}",
                available,
                chapter.Id,
                StartChapterCommand.ExecuteAsync));
        }

        Endings.Clear();
        var endings = session.GetEndings();
        foreach (var ending in endings)
        {
            Endings.Add(new EndingItem(ending.Discovered ? ending.Title : AppResources.Undiscovered, ending.Discovered));
        }

        EndingsSummary = string.Format(AppResources.EndingsSummary, endings.Count(e => e.Discovered), endings.Count);
    }

    [RelayCommand(AllowConcurrentExecutions = false)]
    private async Task StartChapterAsync(ChapterItem chapter)
    {
        if (await session.HasSavedGameAsync())
        {
            _pendingChapter = chapter;
            IsConfirming = true;
            return;
        }

        await StartAsync(chapter);
    }

    [RelayCommand(AllowConcurrentExecutions = false)]
    private Task ConfirmAsync() => _pendingChapter is { } chapter ? StartAsync(chapter) : Task.CompletedTask;

    [RelayCommand]
    private void Cancel() => IsConfirming = false;

    [RelayCommand]
    private Task CloseAsync() => navigation.GoBackAsync();

    private async Task StartAsync(ChapterItem chapter)
    {
        try
        {
            IsBusy = true;
            await session.StartChapterAsync(chapter.Id);
            await navigation.GoToGameAsync();
        }
        catch (FullVersionRequiredException)
        {
            await dialogs.AlertAsync(AppResources.FullVersionTitle, AppResources.ChapterInFullVersion);
        }
        catch (Exception exception)
        {
            logger.LogError(exception, "Nie udało się zacząć rozdziału {Chapter}.", chapter.Id);
            await dialogs.AlertAsync(AppResources.ErrorTitle, exception.Message);
        }
        finally
        {
            IsBusy = false;
            IsConfirming = false;
        }
    }
}

/// <summary>Rozdział na liście: numer, nazwa z tytułem (albo „? ? ?”), czy można od niego zacząć.</summary>
public sealed class ChapterItem
{
    public ChapterItem(string numeral, string text, bool isAvailable, string id, Func<ChapterItem, Task> start)
    {
        Numeral = numeral;
        Text = text;
        IsAvailable = isAvailable;
        Id = id;
        Command = new AsyncRelayCommand(() => start(this), () => isAvailable);
    }

    public string Numeral { get; }

    public string Text { get; }

    public bool IsAvailable { get; }

    public string Id { get; }

    public IRelayCommand Command { get; }
}

/// <summary>Zakończenie na liście: tytuł albo „? ? ?”.</summary>
public sealed record EndingItem(string Title, bool Discovered);
