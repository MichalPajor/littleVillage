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
    private const string PreferenceKey = "ocena_poproszona";

    public async Task RequestAfterFinishAsync()
    {
        if (preferences.Get(PreferenceKey, false) || Platform.CurrentActivity is not { } activity)
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
            preferences.Set(PreferenceKey, true);
        }
        catch (Exception exception)
        {
            logger.LogWarning(exception, "Nie udało się pokazać okna oceny.");
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
