using Ink.Runtime;
using InkStory = Ink.Runtime.Story;

namespace LittleVillage.Core.Story;

/// <summary>Implementacja <see cref="IStoryEngine"/> oparta o oficjalny runtime ink.</summary>
public sealed class InkStoryEngine(InkStoryOptions options) : IStoryEngine
{
    private InkStory? _story;
    private string? _currentBackground;

    public InkStoryEngine() : this(new InkStoryOptions())
    {
    }

    /// <summary>Błędy i ostrzeżenia zgłaszane przez ink w trakcie gry.</summary>
    public event EventHandler<string>? StoryWarning;

    public bool IsLoaded => _story is not null;

    private InkStory Story => _story ?? throw new InvalidOperationException("Fabuła nie została wczytana. Wywołaj Load().");

    public void Load(string compiledStoryJson)
    {
        ArgumentException.ThrowIfNullOrWhiteSpace(compiledStoryJson);

        var story = new InkStory(compiledStoryJson);
        story.onError += (message, type) => StoryWarning?.Invoke(this, $"[{type}] {message}");
        _story = story;
        _currentBackground = null;
    }

    public StoryPage StartNew()
    {
        Story.ResetState();
        _currentBackground = null;
        return BuildPage();
    }

    public StoryPage Choose(int choiceIndex)
    {
        if (choiceIndex < 0 || choiceIndex >= Story.currentChoices.Count)
        {
            throw new ArgumentOutOfRangeException(nameof(choiceIndex), choiceIndex, "Nie ma takiej opcji wyboru.");
        }

        Story.ChooseChoiceIndex(choiceIndex);
        return BuildPage();
    }

    public StoryPage Continue() => BuildPage();

    public string SaveState() => Story.state.ToJson();

    public void RestoreState(string stateJson, string? backgroundKey)
    {
        ArgumentException.ThrowIfNullOrWhiteSpace(stateJson);
        Story.state.LoadJson(stateJson);
        _currentBackground = backgroundKey;
    }

    public IReadOnlyList<InventoryItem> GetInventory()
    {
        if (Story.variablesState[options.InventoryVariable] is not InkList inventory)
        {
            return [];
        }

        return inventory
            .OrderBy(entry => entry.Value)
            .ThenBy(entry => entry.Key.itemName, StringComparer.Ordinal)
            .Select(entry => CreateItem(entry.Key, entry.Value))
            .ToArray();
    }

    private StoryPage BuildPage()
    {
        var builder = new StoryPageBuilder(_currentBackground);

        while (Story.canContinue && !builder.BreakRequested)
        {
            var text = Story.Continue();
            builder.AddLine(text, Story.currentTags);
        }

        _currentBackground = builder.BackgroundKey;

        var choices = Story.currentChoices
            .Select(choice => new StoryChoice(choice.index, choice.text.Trim()))
            .ToArray();

        var ending = (builder.BreakRequested && Story.canContinue) ? PageEnding.Continue
            : choices.Length > 0 ? PageEnding.Choices
            : Story.canContinue ? PageEnding.Continue
            : PageEnding.End;

        return builder.Build(ending == PageEnding.Choices ? choices : [], ending, options.DefaultQuestion);
    }

    private InventoryItem CreateItem(InkListItem item, int value)
    {
        var single = new InkList { [item] = value };

        var name = EvaluateText(options.ItemNameFunction, single)
            ?? item.itemName.Replace('_', ' ');
        var description = EvaluateText(options.ItemDescriptionFunction, single);

        return new InventoryItem(item.itemName, name, description);
    }

    private string? EvaluateText(string functionName, InkList argument)
    {
        if (!Story.HasFunction(functionName))
        {
            return null;
        }

        var result = Story.EvaluateFunction(functionName, out var textOutput, argument);
        var text = (result as string ?? textOutput)?.Trim();
        return string.IsNullOrEmpty(text) ? null : text;
    }
}
