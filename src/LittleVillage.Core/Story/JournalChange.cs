namespace LittleVillage.Core.Story;

/// <summary>Nowe wpisy w zapiskach między dwiema stronami: tytuł karty i czy karta jest zupełnie nowa.</summary>
public sealed record JournalChange(IReadOnlyList<JournalChange.Update> Updates)
{
    public sealed record Update(string Title, bool IsNewCard);

    public bool IsEmpty => Updates.Count == 0;

    /// <summary>Porównuje zapiski przed i po (po identyfikatorach wpisów); kolejność jak w zapiskach.</summary>
    public static JournalChange Between(IReadOnlyList<JournalEntry> before, IReadOnlyList<JournalEntry> after)
    {
        var known = before.SelectMany(card => card.NoteIds).ToHashSet(StringComparer.Ordinal);
        var knownCards = before.Select(card => card.Id).ToHashSet(StringComparer.Ordinal);
        return new JournalChange(after
            .Where(card => card.NoteIds.Any(id => !known.Contains(id)))
            .Select(card => new Update(card.Title, !knownCards.Contains(card.Id)))
            .ToArray());
    }
}
