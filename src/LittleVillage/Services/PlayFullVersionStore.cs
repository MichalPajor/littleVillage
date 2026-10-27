using Microsoft.Extensions.Logging;
using Plugin.InAppBilling;

namespace LittleVillage.Services;

/// <summary>
/// Pełna wersja jako produkt jednorazowy w Google Play. Wynik zapamiętujemy w ustawieniach, żeby gra działała
/// bez internetu; przy starcie aplikacji sprawdzamy go po cichu ze sklepem (np. po zwrocie pieniędzy).
/// </summary>
public sealed class PlayFullVersionStore(IPreferences preferences, ILogger<PlayFullVersionStore> logger) : IFullVersionStore
{
    /// <summary>Identyfikator produktu w Google Play Console (produkt jednorazowy).</summary>
    public const string ProductId = "pelna_wersja";

    private const string PreferenceKey = "pelna_wersja";

    // Wtyczka ma jedno połączenie ze sklepem — operacje nie mogą na siebie nachodzić.
    private readonly SemaphoreSlim _billingLock = new(1, 1);

    public bool IsUnlocked { get; private set; } = preferences.Get(PreferenceKey, false);

    public async Task<string?> GetPriceAsync(CancellationToken cancellationToken = default)
    {
        try
        {
            return await WithBillingAsync(async billing =>
            {
                var products = await billing.GetProductInfoAsync(ItemType.InAppPurchase, [ProductId], cancellationToken);
                return products?.FirstOrDefault(p => p.ProductId == ProductId)?.LocalizedPrice;
            }, cancellationToken);
        }
        catch (Exception exception)
        {
            logger.LogWarning(exception, "Nie udało się pobrać ceny pełnej wersji.");
            return null;
        }
    }

    public async Task<FullVersionPurchase> BuyAsync(CancellationToken cancellationToken = default)
    {
        try
        {
            return await WithBillingAsync<FullVersionPurchase?>(async billing =>
            {
                var purchase = await billing.PurchaseAsync(ProductId, ItemType.InAppPurchase, null, null, null, cancellationToken);
                return purchase is null ? FullVersionPurchase.Cancelled : await AcceptAsync(billing, purchase, cancellationToken);
            }, cancellationToken) ?? FullVersionPurchase.Failed;
        }
        catch (InAppBillingPurchaseException exception) when (exception.PurchaseError == PurchaseError.UserCancelled)
        {
            return FullVersionPurchase.Cancelled;
        }
        catch (InAppBillingPurchaseException exception) when (exception.PurchaseError == PurchaseError.AlreadyOwned)
        {
            return await RestoreAsync(cancellationToken) ? FullVersionPurchase.Bought : FullVersionPurchase.Failed;
        }
        catch (Exception exception)
        {
            logger.LogError(exception, "Zakup pełnej wersji nie powiódł się.");
            return FullVersionPurchase.Failed;
        }
    }

    public async Task<bool> RestoreAsync(CancellationToken cancellationToken = default)
    {
        try
        {
            var result = await WithBillingAsync<FullVersionPurchase?>(async billing =>
            {
                var purchases = await billing.GetPurchasesAsync(ItemType.InAppPurchase, cancellationToken);
                var purchase = purchases?.FirstOrDefault(p => p.ProductId == ProductId || (p.ProductIds?.Contains(ProductId) ?? false));
                return purchase is null ? FullVersionPurchase.Cancelled : await AcceptAsync(billing, purchase, cancellationToken);
            }, cancellationToken);

            // Brak zakupu w odpowiedzi sklepu (np. po zwrocie) odbiera pełną wersję; brak połączenia niczego nie zmienia.
            if (result == FullVersionPurchase.Cancelled)
            {
                SetUnlocked(false);
            }
        }
        catch (Exception exception)
        {
            logger.LogWarning(exception, "Nie udało się sprawdzić zakupu pełnej wersji.");
        }

        return IsUnlocked;
    }

    /// <summary>Odblokowuje grę za opłacony zakup i potwierdza go w sklepie — niepotwierdzony Google zwraca po 3 dniach.</summary>
    private async Task<FullVersionPurchase> AcceptAsync(IInAppBilling billing, InAppBillingPurchase purchase, CancellationToken cancellationToken)
    {
        if (purchase.State is not (PurchaseState.Purchased or PurchaseState.Restored))
        {
            return purchase.State is PurchaseState.PaymentPending or PurchaseState.Deferred or PurchaseState.Purchasing
                ? FullVersionPurchase.Pending
                : FullVersionPurchase.Cancelled;
        }

        SetUnlocked(true);

        if (purchase.IsAcknowledged != true && !string.IsNullOrEmpty(purchase.PurchaseToken))
        {
            // Gdy się nie uda, spróbujemy przy następnym starcie (RestoreAsync).
            await billing.FinalizePurchaseAsync([purchase.PurchaseToken], cancellationToken);
        }

        return FullVersionPurchase.Bought;
    }

    /// <summary>Łączy ze sklepem na czas operacji; null, gdy sklep jest niedostępny (brak Google Play, brak sieci).</summary>
    private async Task<T?> WithBillingAsync<T>(Func<IInAppBilling, Task<T>> operation, CancellationToken cancellationToken)
    {
        await _billingLock.WaitAsync(cancellationToken);
        var billing = CrossInAppBilling.Current;
        try
        {
            if (!await billing.ConnectAsync(true, cancellationToken))
            {
                return default;
            }

            return await operation(billing);
        }
        finally
        {
            await billing.DisconnectAsync(CancellationToken.None);
            _billingLock.Release();
        }
    }

    private void SetUnlocked(bool unlocked)
    {
        IsUnlocked = unlocked;
        preferences.Set(PreferenceKey, unlocked);
    }
}
