namespace LittleVillage.Core.Story;

/// <summary>Składa kolejne linie wygenerowane przez ink w jedną <see cref="StoryPage"/>.</summary>
internal sealed class StoryPageBuilder(string? initialBackground)
{
    private readonly List<StoryBlock> _blocks = [];
    private readonly List<string> _pendingReveals = [];
    private bool _nextParagraphHasDropCap;
    private bool _pendingAnnounce;

    public string? BackgroundKey { get; private set; } = initialBackground;

    public string? Question { get; private set; }

    /// <summary>Czy natrafiono na tag <c># dalej</c> — strona ma się tu zakończyć.</summary>
    public bool BreakRequested { get; private set; }

    /// <summary>Czy scena kończy się śmiercią bohatera (tag <c># smierc</c>).</summary>
    public bool DeathRequested { get; private set; }

    /// <summary>Czy tobołek ma się zmienić po cichu (tag <c># nowy_tobolek</c>).</summary>
    public bool ResetsInventory { get; private set; }

    /// <summary>Czy za tą stroną zaczyna się pełna wersja (tag <c># pelna_wersja</c>).</summary>
    public bool RequiresFullVersion { get; private set; }

    public void AddLine(string? text, IEnumerable<string>? rawTags)
    {
        foreach (var tag in (rawTags ?? []).Select(StoryTag.Parse))
        {
            ApplyTag(tag);
        }

        var trimmed = text?.Trim();
        if (!string.IsNullOrEmpty(trimmed))
        {
            _blocks.Add(new StoryBlock(StoryBlockKind.Paragraph, trimmed, _nextParagraphHasDropCap, RevealList.Join(_pendingReveals), _pendingAnnounce));
            _nextParagraphHasDropCap = false;
            _pendingReveals.Clear();
            _pendingAnnounce = false;
        }
    }

    public StoryPage Build(IReadOnlyList<StoryChoice> choices, PageEnding ending, string defaultQuestion, string? alreadyRevealed)
    {
        // Tag # pokaz bez akapitu po nim (np. tuż przed wyborami) — odsłania przy ostatnim akapicie strony.
        var lastParagraph = _blocks.FindLastIndex(b => b.Kind == StoryBlockKind.Paragraph);
        if (_pendingReveals.Count > 0 && lastParagraph >= 0)
        {
            var last = _blocks[lastParagraph];
            _blocks[lastParagraph] = last with { Reveal = RevealList.Join(RevealList.Split(last.Reveal).Concat(_pendingReveals)) };
            _pendingReveals.Clear();
        }

        if (_pendingAnnounce && lastParagraph >= 0)
        {
            _blocks[lastParagraph] = _blocks[lastParagraph] with { AnnouncesChanges = true };
            _pendingAnnounce = false;
        }

        return new StoryPage(
            _blocks.ToArray(),
            choices,
            ending,
            BackgroundKey,
            ending == PageEnding.Choices ? Question ?? defaultQuestion : null,
            alreadyRevealed,
            ResetsInventory,
            RequiresFullVersion);
    }

    private void ApplyTag(StoryTag tag)
    {
        switch (tag.Name)
        {
            case StoryTag.Background when tag.Value is not null:
                BackgroundKey = tag.Value;
                break;
            case StoryTag.Chapter when tag.Value is not null:
                _blocks.Add(new StoryBlock(StoryBlockKind.Chapter, tag.Value));
                break;
            case StoryTag.Title when tag.Value is not null:
                _blocks.Add(new StoryBlock(StoryBlockKind.Title, tag.Value));
                _nextParagraphHasDropCap = true;
                break;
            case StoryTag.Question when tag.Value is not null:
                Question = tag.Value;
                break;
            case StoryTag.Divider:
                _blocks.Add(new StoryBlock(StoryBlockKind.Divider, string.Empty));
                break;
            case StoryTag.Continue:
                BreakRequested = true;
                break;
            case StoryTag.Death:
                DeathRequested = true;
                break;
            case StoryTag.Inventory:
                _pendingAnnounce = true;
                break;
            case StoryTag.NewInventory:
                ResetsInventory = true;
                break;
            case StoryTag.FullVersion:
                RequiresFullVersion = true;
                break;
            case StoryTag.Reveal when tag.Value is not null:
                _pendingReveals.AddRange(RevealList.Split(tag.Value));
                break;
        }
    }
}
