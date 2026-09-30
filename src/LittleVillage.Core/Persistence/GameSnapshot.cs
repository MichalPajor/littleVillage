using LittleVillage.Core.Story;

namespace LittleVillage.Core.Persistence;

/// <summary>Zapis gry: stan silnika ink + aktualnie wyświetlana strona.</summary>
public sealed record GameSnapshot(int FormatVersion, string InkState, StoryPage Page, DateTimeOffset SavedAt)
{
    public const int CurrentFormatVersion = 1;
}
