using LittleVillage.Core.Story;

namespace LittleVillage.Messages;

/// <summary>Wyświetlono nową stronę fabuły — widok przewija tekst na początek i ukrywa nieodsłonięte warstwy tła.</summary>
public sealed record StoryPageShownMessage(StoryPage Page);

/// <summary>Gracz wybrał opcję — widok przewija na dół, do przycisku „Dalej”.</summary>
public sealed record StoryChoiceSelectedMessage;
