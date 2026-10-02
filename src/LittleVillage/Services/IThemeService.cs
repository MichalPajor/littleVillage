namespace LittleVillage.Services;

/// <summary>Jasny lub ciemny tryb okien z tekstem; wybór jest zapamiętywany między uruchomieniami.</summary>
public interface IThemeService
{
    bool IsDark { get; }

    /// <summary>Nakłada zapamiętany tryb na zasoby aplikacji (wywoływane przy starcie).</summary>
    void Apply();

    void SetDark(bool isDark);
}
