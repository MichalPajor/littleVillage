namespace LittleVillage.Core.Persistence;

/// <summary>Postęp, który przetrwa nową grę: odkryte zakończenia i początki rozdziałów, od których można zacząć.</summary>
/// <param name="Endings">Odkryte zakończenia (elementy listy ink <c>Zakonczenia</c>), w kolejności odkrycia.</param>
/// <param name="Chapters">Zapis z pierwszej strony każdego rozdziału — z ostatniego przejścia, w którym gracz do niego doszedł.</param>
public sealed record GameProgress(IReadOnlyList<string> Endings, IReadOnlyList<ChapterCheckpoint> Chapters)
{
    public static GameProgress Empty { get; } = new([], []);
}

/// <summary>Początek rozdziału: tytuł i zapis gry z jego pierwszej strony.</summary>
public sealed record ChapterCheckpoint(string Chapter, string? Title, GameSnapshot Snapshot);

/// <summary>Miejsce przechowywania postępu.</summary>
public interface IProgressRepository
{
    Task<GameProgress> LoadAsync(CancellationToken cancellationToken = default);

    Task SaveAsync(GameProgress progress, CancellationToken cancellationToken = default);
}
