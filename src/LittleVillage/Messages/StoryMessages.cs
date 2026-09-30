namespace LittleVillage.Messages;

/// <summary>Wyświetlono nową stronę fabuły — widok przewija tekst na początek.</summary>
public sealed record StoryPageShownMessage;

/// <summary>Gracz wybrał opcję — widok przewija na dół, do przycisku „Dalej”.</summary>
public sealed record StoryChoiceSelectedMessage;
