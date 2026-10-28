namespace LittleVillage.Services;

/// <summary>Wielkość tekstu opowieści.</summary>
public enum TextSize
{
    Small,
    Medium,
    Large,
}

/// <summary>Ustawienia gracza; zapamiętywane między uruchomieniami.</summary>
public interface ISettingsService
{
    TextSize TextSize { get; }

    /// <summary>Tło przesuwa się przy przechylaniu telefonu.</summary>
    bool Parallax { get; }

    /// <summary>Nakłada zapamiętane ustawienia (wywoływane przy starcie).</summary>
    void Apply();

    void SetTextSize(TextSize size);

    void SetParallax(bool enabled);
}
