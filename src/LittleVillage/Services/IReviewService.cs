namespace LittleVillage.Services;

/// <summary>Prośba o ocenę gry w sklepie.</summary>
public interface IReviewService
{
    /// <summary>
    /// Pokazuje okno oceny Google Play (gwiazdki i opinia bez wychodzenia z gry) — w danym momencie gry tylko raz.
    /// Sklep sam decyduje, czy okno się pojawi (limit wyświetleń, gra spoza Google Play).
    /// </summary>
    /// <param name="moment">Nazwa momentu, np. <c>rozdzial_10</c>, <c>koniec</c> — każdy pytamy osobno.</param>
    Task RequestAsync(string moment);

    /// <summary>Otwiera stronę gry w sklepie (przycisk „Oceń grę” w menu).</summary>
    Task OpenStorePageAsync();
}
