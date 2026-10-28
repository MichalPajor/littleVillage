namespace LittleVillage.Services;

/// <summary>Prośba o ocenę gry w sklepie.</summary>
public interface IReviewService
{
    /// <summary>
    /// Pokazuje okno oceny Google Play (gwiazdki i opinia bez wychodzenia z gry) — raz, po pierwszym ukończeniu opowieści.
    /// Sklep sam decyduje, czy okno się pojawi (limit wyświetleń, gra spoza Google Play).
    /// </summary>
    Task RequestAfterFinishAsync();
}
