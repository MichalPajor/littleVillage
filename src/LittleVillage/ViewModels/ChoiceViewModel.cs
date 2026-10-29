using System.Globalization;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using LittleVillage.Core.Story;
using LittleVillage.Core.Text;

namespace LittleVillage.ViewModels;

/// <summary>Opcja wyboru wyświetlana jako przycisk.</summary>
public sealed partial class ChoiceViewModel : ObservableObject
{
    // Każda opcja ma nieco inne zaokrąglenia — efekt ręcznego rysunku (jak na makiecie).
    private static readonly CornerRadius[] SketchRadii =
    [
        new(10, 14, 13, 9),
        new(14, 9, 10, 12),
        new(9, 13, 10, 14),
        new(12, 10, 14, 9),
    ];

    public ChoiceViewModel(StoryChoice choice, int position, Action<ChoiceViewModel> onSelected)
    {
        Choice = choice;
        Text = BookTypography.KeepTogether(choice.Text, CultureInfo.CurrentUICulture.TwoLetterISOLanguageName);
        Numeral = RomanNumeral.From(position + 1);
        CornerRadius = SketchRadii[position % SketchRadii.Length];
        SelectCommand = new RelayCommand(() => onSelected(this));
    }

    public StoryChoice Choice { get; }

    public string Numeral { get; }

    // Łamanie wierszy jak w akapitach fabuły (jednoliterowe wyrazy, myślniki).
    public string Text { get; }

    public CornerRadius CornerRadius { get; }

    public IRelayCommand SelectCommand { get; }

    [ObservableProperty]
    public partial bool IsSelected { get; set; }
}
