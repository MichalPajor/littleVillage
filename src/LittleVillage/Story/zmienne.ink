// ------------------------------------------------------------
//  Zmienne globalne — pamięć o decyzjach gracza.
// ------------------------------------------------------------

// Gdzie Maciek (dziadek Jaromira) postawił chatę w prologu.
// Od tego wyboru zależą późniejsze losy rodziny.
LIST Siedliska = przy_lesie, przy_mokradlach, nad_jeziorem
VAR chata_macka = ()

// Młody dziki pies spotkany w prologu.
//   nakarmiony  — Maciek dał mu chleb; pies krąży coraz bliżej chaty
//   oswojony    — nakarmiony pies obronił Maćka przed stworem i został jego towarzyszem
//   porzucony   — Maciek go znalazł, ale nie nakarmił; pies zdechł, a stwór porwał jego ciało
//   niespotkany — Maciek nie wyszedł z szałasu; pies zdechł, a stwór porwał jego ciało
LIST LosyPsa = nakarmiony, oswojony, porzucony, niespotkany
VAR los_psa = ()

// Rano po nocy z topielcem Maciek chciał uciec z Zapadliny (zawrócił, ale to w nim zostało).
VAR chcial_odejsc = false

// Pies wyciągnął Maćka z bagna, gdy ten poszedł za głosem żony.
VAR pies_uratowal = false

// Czy Maciek przeszukał zgliszcza chaty wiedźmy nad jeziorem.
VAR przeszukal_zgliszcza = false

// Czy Maciek powiedział Stasiowi, synowi Andrzeja, prawdę o stworze (true), czy zbył go i rozmawiał z Andrzejem w cztery oczy (false).
VAR stas_zaufanie = false

// Komu Maciek sprzedał w mieście figurkę: staruszce (true — ta odprawi nad nią czary i naśle stwora na chatę) czy handlarzowi starzyzną.
VAR figurka_u_staruchy = false

// Czy Maciek opowiedział żonie o stworze, legendzie i głosie znad bagien.
VAR zona_wie = false
