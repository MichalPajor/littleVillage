using LittleVillage.Core.Game;

namespace LittleVillage.Services;

/// <summary>Zakup pełnej wersji (rozdziały od piątego) — jednorazowo, bez reklam i abonamentu.</summary>
public interface IFullVersionStore : IFullVersion
{
    /// <summary>Cena ze sklepu w walucie gracza (np. „19,99 zł”); null, gdy sklep jest niedostępny.</summary>
    Task<string?> GetPriceAsync(CancellationToken cancellationToken = default);

    Task<FullVersionPurchase> BuyAsync(CancellationToken cancellationToken = default);

    /// <summary>Sprawdza w sklepie, czy pełna wersja jest kupiona (też po reinstalacji i na innym telefonie).</summary>
    Task<bool> RestoreAsync(CancellationToken cancellationToken = default);
}

public enum FullVersionPurchase
{
    Bought,
    Cancelled,

    /// <summary>Płatność czeka na potwierdzenie (np. przelew, karta podarunkowa) — odblokujemy, gdy przejdzie.</summary>
    Pending,

    Failed,
}
