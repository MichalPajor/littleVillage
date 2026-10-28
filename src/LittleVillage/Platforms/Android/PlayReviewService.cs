using Google.Android.Play.Core.Review;
using LittleVillage.Services;
using Microsoft.Extensions.Logging;
using GmsTask = Android.Gms.Tasks.Task;

namespace LittleVillage;

/// <summary>
/// Okno oceny z Google Play In-App Review. Własnego okna z gwiazdkami nie robimy: zasady Google Play zabraniają
/// pytać o ocenę przed oknem sklepu i odsyłać do sklepu tylko zadowolonych graczy.
/// </summary>
public sealed class PlayReviewService(IPreferences preferences, ILogger<PlayReviewService> logger) : IReviewService
{
    private const string PreferencePrefix = "ocena_";

    public async Task RequestAsync(string moment)
    {
        var key = PreferencePrefix + moment;
        if (preferences.Get(key, false) || Platform.CurrentActivity is not { } activity)
        {
            return;
        }

        try
        {
            var manager = ReviewManagerFactory.Create(activity);
            var request = await CompleteAsync(manager.RequestReviewFlow());
            if (!request.IsSuccessful || request.Result is not { } result)
            {
                logger.LogInformation("Google Play nie udostępnił okna oceny (np. gra zainstalowana spoza sklepu).");
                return;
            }

            await CompleteAsync(manager.LaunchReviewFlow(activity, Android.Runtime.Extensions.JavaCast<ReviewInfo>(result)));
            preferences.Set(key, true);
        }
        catch (Exception exception)
        {
            logger.LogWarning(exception, "Nie udało się pokazać okna oceny.");
        }
    }

    public async Task OpenStorePageAsync()
    {
        var package = AppInfo.Current.PackageName;
        try
        {
            // Aplikacja Sklepu Play, a gdy jej nie ma — strona w przeglądarce.
            if (!await Launcher.Default.TryOpenAsync($"market://details?id={package}"))
            {
                await Browser.Default.OpenAsync($"https://play.google.com/store/apps/details?id={package}", BrowserLaunchMode.External);
            }
        }
        catch (Exception exception)
        {
            logger.LogWarning(exception, "Nie udało się otworzyć strony gry w sklepie.");
        }
    }

    private static Task<GmsTask> CompleteAsync(GmsTask task)
    {
        var listener = new CompleteListener();
        task.AddOnCompleteListener(listener);
        return listener.Completion.Task;
    }

    private sealed class CompleteListener : Java.Lang.Object, Android.Gms.Tasks.IOnCompleteListener
    {
        public TaskCompletionSource<GmsTask> Completion { get; } = new();

        public void OnComplete(GmsTask task) => Completion.TrySetResult(task);
    }
}
