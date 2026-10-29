namespace LittleVillage.Core.Game;

/// <summary>Język, w którym ma być opowiadana fabuła (kod jak w <see cref="Localization.GameLanguage"/>).</summary>
public interface IStoryLanguage
{
    string Current { get; }
}

/// <summary>Stały język — dla testów i narzędzi.</summary>
public sealed class FixedStoryLanguage(string code) : IStoryLanguage
{
    public string Current { get; set; } = code;
}
