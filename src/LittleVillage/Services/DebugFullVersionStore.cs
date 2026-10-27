namespace LittleVillage.Services;

/// <summary>
/// Zakup na niby w wersji DEBUG: Google Play obsługuje płatności tylko w aplikacji wgranej do sklepu,
/// więc na emulatorze i przy uruchamianiu z komputera zakup tylko się pozoruje. Odblokowanie znika po wyczyszczeniu danych aplikacji.
/// </summary>
public sealed class DebugFullVersionStore(IPreferences preferences) : IFullVersionStore
{
    private const string PreferenceKey = "pelna_wersja_debug";

    public bool IsUnlocked { get; private set; } = preferences.Get(PreferenceKey, false);

    public Task<string?> GetPriceAsync(CancellationToken cancellationToken = default) => Task.FromResult<string?>("19,99 zł");

    public Task<FullVersionPurchase> BuyAsync(CancellationToken cancellationToken = default)
    {
        IsUnlocked = true;
        preferences.Set(PreferenceKey, true);
        return Task.FromResult(FullVersionPurchase.Bought);
    }

    public Task<bool> RestoreAsync(CancellationToken cancellationToken = default) => Task.FromResult(IsUnlocked);
}
