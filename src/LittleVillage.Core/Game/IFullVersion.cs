namespace LittleVillage.Core.Game;

/// <summary>Czy gracz ma pełną wersję gry (rozdziały za darmową częścią).</summary>
public interface IFullVersion
{
    bool IsUnlocked { get; }
}

/// <summary>Gracz doszedł do końca darmowej części bez pełnej wersji.</summary>
public sealed class FullVersionRequiredException() : InvalidOperationException("Dalsza część opowieści wymaga pełnej wersji.");
