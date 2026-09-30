namespace LittleVillage.Services;

public sealed class DialogService : IDialogService
{
    public Task AlertAsync(string title, string message) =>
        Shell.Current?.DisplayAlertAsync(title, message, "Dobrze") ?? Task.CompletedTask;
}
