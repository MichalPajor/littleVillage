using CommunityToolkit.Mvvm.Messaging;
using LittleVillage.Messages;
using LittleVillage.ViewModels;

namespace LittleVillage.Views;

public partial class GamePage : BasePage
{
    private readonly GameViewModel _viewModel;
    private readonly IMessenger _messenger;

    public GamePage(GameViewModel viewModel, IMessenger messenger) : base(viewModel)
    {
        _viewModel = viewModel;
        _messenger = messenger;
        InitializeComponent();
    }

    protected override void OnAppearing()
    {
        // Rejestracja przed base.OnAppearing — ViewModel wyświetla stronę właśnie tam.
        _messenger.Register<StoryPageShownMessage>(this, (_, _) => _ = OnPageShownAsync());
        _messenger.Register<StoryChoiceSelectedMessage>(this, (_, _) => _ = OnChoiceSelectedAsync());
        base.OnAppearing();
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        _messenger.UnregisterAll(this);
    }

    protected override bool OnBackButtonPressed()
    {
        if (_viewModel.IsInventoryOpen)
        {
            _viewModel.CloseInventoryCommand.Execute(null);
            return true;
        }

        return base.OnBackButtonPressed();
    }

    // Nowa strona: tekst od początku, z krótkim pojawieniem się.
    private async Task OnPageShownAsync()
    {
        StoryContent.Opacity = 0;
        ScrollStoryToTop();

        // Nowe akapity układają się dopiero po chwili, a zmiana wysokości treści potrafi
        // przywrócić stare przewinięcie — dlatego ponawiamy po ułożeniu i po pojawieniu się strony.
        await Task.Delay(50);
        ScrollStoryToTop();
        await StoryContent.FadeToAsync(1, 350, Easing.CubicOut);
        ScrollStoryToTop();
    }

    private void ScrollStoryToTop()
    {
#if ANDROID
        // Bezpośrednio na natywnym widoku: działa od razu, także zanim MAUI zakończy układanie treści.
        (StoryScroll.Handler?.PlatformView as Android.Views.View)?.ScrollTo(0, 0);
#endif

        // Bez await: przed pierwszym układem ScrollToAsync potrafi się nigdy nie zakończyć.
        _ = StoryScroll.ScrollToAsync(0, 0, animated: false);
    }

    // Po wyborze opcji pokazujemy przycisk „Dalej” pod opcjami.
    private async Task OnChoiceSelectedAsync()
    {
        await Task.Delay(60);

        // Na sam koniec treści (z dolnym odstępem) — dolna krawędź okna fabuły jest celowo schowana poza ekranem.
        var bottom = Math.Max(0, StoryScroll.ContentSize.Height - StoryScroll.Height);
        await StoryScroll.ScrollToAsync(0, bottom, animated: true);
    }
}
