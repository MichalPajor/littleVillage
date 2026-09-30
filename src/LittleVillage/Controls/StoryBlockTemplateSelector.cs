using LittleVillage.Core.Story;

namespace LittleVillage.Controls;

/// <summary>Dobiera szablon wyglądu do rodzaju elementu fabuły.</summary>
public sealed class StoryBlockTemplateSelector : DataTemplateSelector
{
    public DataTemplate? ChapterTemplate { get; set; }

    public DataTemplate? TitleTemplate { get; set; }

    public DataTemplate? ParagraphTemplate { get; set; }

    public DataTemplate? DividerTemplate { get; set; }

    protected override DataTemplate OnSelectTemplate(object item, BindableObject container)
    {
        var template = (item as StoryBlock)?.Kind switch
        {
            StoryBlockKind.Chapter => ChapterTemplate,
            StoryBlockKind.Title => TitleTemplate,
            StoryBlockKind.Divider => DividerTemplate,
            _ => ParagraphTemplate,
        };

        return template ?? throw new InvalidOperationException($"Brak szablonu dla elementu fabuły: {item}.");
    }
}
