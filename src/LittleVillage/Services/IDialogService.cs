namespace LittleVillage.Services;

/// <summary>Komunikaty dla gracza (np. o błędach).</summary>
public interface IDialogService
{
    Task AlertAsync(string title, string message);
}
