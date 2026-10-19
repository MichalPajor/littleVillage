using LittleVillage.Core.Story;

namespace LittleVillage.Messages;

/// <summary>Wyświetlono nową stronę fabuły — widok przewija tekst na początek i ukrywa nieodsłonięte warstwy tła.</summary>
public sealed record StoryPageShownMessage(StoryPage Page);

/// <summary>Gracz wybrał opcję — widok przewija na dół, do przycisku „Dalej”.</summary>
public sealed record StoryChoiceSelectedMessage;

/// <summary>Ekwipunek zmienił się po przejściu dalej — widok pokazuje „+ przedmiot” / „− przedmiot” przy tobołku.</summary>
public sealed record InventoryChangedMessage(InventoryChange Change);

/// <summary>W zapiskach pojawiła się nowa karta albo nowy wpis na istniejącej.</summary>
public sealed record JournalChangedMessage(JournalChange Change);
