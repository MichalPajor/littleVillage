using CommunityToolkit.Mvvm.Messaging;
using LittleVillage.Core.Story;
using LittleVillage.Messages;
using LittleVillage.ViewModels;

namespace LittleVillage.Views;

public partial class GamePage : BasePage
{
    // Odsłanianie warstw tła (tag # pokaz): akapit „przeczytany” = jego górna krawędź doszła do tej części
    // okna fabuły i minął szacowany czas czytania tekstu przed nim. Dzięki temu tło nie zdradza fabuły.
    private const double ReadLineFraction = 0.6;
    private const double CharactersPerSecond = 25;
    private static readonly TimeSpan MinimumReadingTime = TimeSpan.FromSeconds(1.2);

    private readonly GameViewModel _viewModel;
    private readonly IMessenger _messenger;
    private readonly HashSet<StoryBlock> _revealedBlocks = new(ReferenceEqualityComparer.Instance);
    private IDispatcherTimer? _revealTimer;
    private DateTime _pageShownAt;

    public GamePage(GameViewModel viewModel, IMessenger messenger) : base(viewModel)
    {
        _viewModel = viewModel;
        _messenger = messenger;
        InitializeComponent();
    }

    protected override void OnAppearing()
    {
        // Rejestracja przed base.OnAppearing — ViewModel wyświetla stronę właśnie tam.
        _messenger.Register<StoryPageShownMessage>(this, (_, message) => _ = OnPageShownAsync(message.Page));
        _messenger.Register<StoryChoiceSelectedMessage>(this, (_, _) => _ = OnChoiceSelectedAsync());

        _revealTimer ??= CreateRevealTimer();
        _revealTimer.Start();
        StoryScroll.Scrolled += OnStoryScrolled;

        base.OnAppearing();
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        _messenger.UnregisterAll(this);
        _revealTimer?.Stop();
        StoryScroll.Scrolled -= OnStoryScrolled;
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
    private async Task OnPageShownAsync(StoryPage page)
    {
        _revealedBlocks.Clear();
        _pageShownAt = DateTime.UtcNow;
        SceneView.ResetReveals(RevealList.Split(page.AlreadyRevealed));

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

    private IDispatcherTimer CreateRevealTimer()
    {
        var timer = Dispatcher.CreateTimer();
        timer.Interval = TimeSpan.FromMilliseconds(300);
        timer.Tick += (_, _) => RevealReadParagraphs();
        return timer;
    }

    private void OnStoryScrolled(object? sender, ScrolledEventArgs e) => RevealReadParagraphs();

    /// <summary>Odsłania warstwy tła przypisane akapitom, do których gracz już doczytał.</summary>
    private void RevealReadParagraphs()
    {
        // Zwinięte okno lub otwarty ekwipunek — gracz nie czyta, więc niczego nie odsłaniamy.
        if (_viewModel.IsPanelCollapsed || _viewModel.IsInventoryOpen || StoryScroll.Height <= 0)
        {
            return;
        }

        var elapsed = DateTime.UtcNow - _pageShownAt;
        var readLine = StoryScroll.ScrollY + StoryScroll.Height * ReadLineFraction;
        var charactersBefore = 0;

        foreach (var child in StoryBlocks.Children.OfType<View>())
        {
            if (child.BindingContext is not StoryBlock block)
            {
                continue;
            }

            if (block.Reveal is not null && !_revealedBlocks.Contains(block))
            {
                var top = StoryBlocks.Y + child.Y;
                var readingTime = TimeSpan.FromSeconds(Math.Max(MinimumReadingTime.TotalSeconds, charactersBefore / CharactersPerSecond));

                if (child.Height > 0 && top <= readLine && elapsed >= readingTime)
                {
                    _revealedBlocks.Add(block);
                    foreach (var name in RevealList.Split(block.Reveal))
                    {
                        SceneView.Reveal(name);
                    }
                }
            }

            charactersBefore += block.Text.Length;
        }
    }
}
