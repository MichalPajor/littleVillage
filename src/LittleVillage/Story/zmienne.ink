// ------------------------------------------------------------
//  Zmienne globalne — pamięć o decyzjach gracza.
// ------------------------------------------------------------

// Gdzie Maciek (dziadek Jaromira) postawił chatę w prologu.
// Od tego wyboru zależą późniejsze losy rodziny.
LIST Siedliska = przy_lesie, przy_mokradlach, nad_jeziorem
VAR chata_macka = ()

// Młody dziki pies spotkany w prologu.
//   oswojony    — Maciek dał mu chleb, pies został jego towarzyszem
//   porzucony   — Maciek go znalazł, ale nie nakarmił (kiedyś znajdzie jego szczątki)
//   niespotkany — Maciek nie wyszedł z szałasu
LIST LosyPsa = oswojony, porzucony, niespotkany
VAR los_psa = ()
