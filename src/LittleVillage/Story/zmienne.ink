// ------------------------------------------------------------
//  Zmienne globalne — pamięć o decyzjach gracza.
// ------------------------------------------------------------

// Gdzie Maciek (dziadek Jaromira) postawił chatę w prologu.
// Od tego wyboru zależą późniejsze losy rodziny.
LIST Siedliska = przy_lesie, przy_mokradlach, nad_jeziorem
VAR chata_macka = ()

// Młody dziki pies spotkany w prologu.
//   nakarmiony  — Maciek dał mu chleb; pies będzie przychodził, oswoi się i zostanie jego towarzyszem
//   porzucony   — Maciek go znalazł, ale nie nakarmił (kiedyś znajdzie jego szczątki)
//   niespotkany — Maciek nie wyszedł z szałasu
LIST LosyPsa = nakarmiony, porzucony, niespotkany
VAR los_psa = ()
