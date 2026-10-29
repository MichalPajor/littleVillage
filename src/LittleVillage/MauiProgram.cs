using CommunityToolkit.Maui;
using CommunityToolkit.Mvvm.Messaging;
using LittleVillage.Core.Game;
using LittleVillage.Core.Persistence;
using LittleVillage.Core.Story;
using LittleVillage.Services;
using LittleVillage.ViewModels;
using LittleVillage.Views;
using Microsoft.Extensions.Logging;
using ThemeFonts = LittleVillage.Theme.Fonts;

namespace LittleVillage;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();
        builder
            .UseMauiApp<App>()
            .UseMauiCommunityToolkit()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("Alegreya-Regular.ttf", ThemeFonts.Alegreya);
                fonts.AddFont("Alegreya-Italic.ttf", ThemeFonts.AlegreyaItalic);
                fonts.AddFont("Alegreya-Bold.ttf", ThemeFonts.AlegreyaBold);
                fonts.AddFont("PirataOne-Regular.ttf", ThemeFonts.PirataOne);
                fonts.AddFont("ShipporiMincho-Regular.ttf", ThemeFonts.ShipporiMincho);
                fonts.AddFont("ShipporiMincho-Bold.ttf", ThemeFonts.ShipporiMinchoBold);
            });

        builder.Services
            .AddGameCore()
            .AddAppServices()
            .AddScreens();

#if DEBUG
        builder.Logging.AddDebug();
#endif

        return builder.Build();
    }

    /// <summary>Logika gry (LittleVillage.Core): silnik ink, zapis, sesja.</summary>
    private static IServiceCollection AddGameCore(this IServiceCollection services)
    {
        services.AddSingleton(new InkStoryOptions());
        services.AddSingleton<IStoryEngine>(provider =>
        {
            var engine = new InkStoryEngine(provider.GetRequiredService<InkStoryOptions>());
            var logger = provider.GetRequiredService<ILogger<InkStoryEngine>>();
            engine.StoryWarning += (_, message) => logger.LogWarning("Ink: {Message}", message);
            return engine;
        });
        services.AddSingleton<ISaveGameRepository>(_ => new JsonFileSaveGameRepository(FileSystem.AppDataDirectory));
        services.AddSingleton<IProgressRepository>(_ => new JsonFileProgressRepository(FileSystem.AppDataDirectory));
        services.AddSingleton(TimeProvider.System);
        services.AddSingleton<IGameSession, GameSession>();
        return services;
    }

    private static IServiceCollection AddAppServices(this IServiceCollection services)
    {
        services.AddSingleton<IStoryAssetSource, MauiStoryAssetSource>();
        services.AddSingleton<INavigationService, ShellNavigationService>();
        services.AddSingleton<IDialogService, DialogService>();
        services.AddSingleton<IMessenger>(WeakReferenceMessenger.Default);
        services.AddSingleton(Preferences.Default);
        services.AddSingleton<IThemeService, ThemeService>();
        services.AddSingleton<ISettingsService, SettingsService>();
        services.AddSingleton<ILanguageService, LanguageService>();
        services.AddSingleton<IStoryLanguage>(provider => provider.GetRequiredService<ILanguageService>());
#if DEBUG
        services.AddSingleton<IFullVersionStore, DebugFullVersionStore>();
#else
        services.AddSingleton<IFullVersionStore, PlayFullVersionStore>();
#endif
        services.AddSingleton<IFullVersion>(provider => provider.GetRequiredService<IFullVersionStore>());
#if ANDROID
        services.AddSingleton<IReviewService, PlayReviewService>();
#endif
        return services;
    }

    /// <summary>Strony i ViewModele (rozszerzenia CommunityToolkit.Maui).</summary>
    private static IServiceCollection AddScreens(this IServiceCollection services)
    {
        services.AddTransient<SplashPage, SplashViewModel>();
        services.AddTransient<MainMenuPage, MainMenuViewModel>();
        services.AddTransientWithShellRoute<GamePage, GameViewModel>(Routes.Game);
        services.AddTransientWithShellRoute<StoryBookPage, StoryBookViewModel>(Routes.StoryBook);
        services.AddTransientWithShellRoute<SettingsPage, SettingsViewModel>(Routes.Settings);
        return services;
    }
}
