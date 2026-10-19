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

// Bez psa: Maćka wyciągnął z bagna Andrzej (gdy nie miał krzesiwa, którym odpędził ognik).
VAR uratowal_andrzej = false
// Bagno zabrało Maćkowi figurkę (może kiedyś wypłynąć z mokradeł — rozdział 13).
VAR figurka_w_bagnie = false
// Po bagnie zostały Maćkowi na łydkach sine pręgi od palców — do końca życia.
VAR pregi_na_lydkach = false

// Czy Maciek przeszukał zgliszcza chaty wiedźmy nad jeziorem.
VAR przeszukal_zgliszcza = false

// Czy Maciek powiedział Stasiowi, synowi Andrzeja, prawdę o stworze (true), czy zbył go i rozmawiał z Andrzejem w cztery oczy (false).
VAR stas_zaufanie = false

// Komu Maciek sprzedał w mieście figurkę: staruszce (true — ta odprawi nad nią czary i naśle stwora na chatę) czy handlarzowi starzyzną.
VAR figurka_u_staruchy = false

// Czy Maciek opowiedział żonie o stworze, legendzie i głosie znad bagien.
VAR zona_wie = false

// ---------- Rozdział pierwszy (Jaromir) ----------
// Co Jaromir schował do skrzynki na skarby w bazie na bzie.
LIST SkarbyJaromira = muszelka, pioro, gwozdz
VAR skarb_jaromira = ()

// Czy Jaromir okazał odwagę nad jeziorem (podpłynął mimo zakazu ojca / dotknął zwęglonych bali).
VAR odwaga_jaromira = false

// ---------- Rozdział drugi (szkoła) ----------
// Czy Jaromir zawołał we mgle do tego, kto liczył w głębi boru (las go zapamięta).
VAR zawolal_do_lasu = false

// Jak Jaromir zachował się, gdy Bartek zniszczył Antkowi tabliczkę: stanął w obronie, pobiegł po nauczyciela albo odwrócił wzrok.
LIST ObronaAntka = stanal, poskarzyl, odwrocil_wzrok
VAR obrona_antka = ()

// Czy Jaromir wszedł do boru po wstążkę Hanki (i zobaczył starca w kożuchu).
VAR poszedl_po_wstazke = false

// ---------- Rozdział trzeci (Wigilia) ----------
// U kogo Jaromir szukał rady na północnicę (z księgi wie też o maku).
LIST RadyJaromira = hanka, ksiega_rada, ojciec
VAR rada_jaromira = ()

// Czy Jaromir uprosił ojca, żeby wpuścił dziada na wigilijną wieczerzę (dziad ostrzegł: „nie odzywaj się do niej”).
VAR wpuscil_dziada = false

// Imię szczeniaka z rodu psa dziadka Maćka (tylko gdy pies przeżył w prologu).
VAR imie_psa = ""

// Co Jaromir zrobił, gdy z boru zawołał go głos matki.
LIST GlosyWLesie = odpowiedzial, kozuch, ucieczka
VAR glos_w_lesie = ()

// Pan Ignacy pozwolił Jaromirowi zatrzymać księgę (zamiast oddać ją na Boże Narodzenie).
VAR ksiega_zatrzymana = false

// Jak Jaromir przegonił północnicę znad kołyski Zosi: nożykiem (zostaje w kołysce), makiem z księgi albo krzykiem (wracała).
LIST KoniecPolnocnicy = przegnana_nozem, policzyla_mak, uslyszala_krzyk
VAR polnocnica = ()

// ---------- Rozdział czwarty (Marzanna) ----------
// Czy Maciek miał na końcu prologu krzesiwo (ustawiane na starcie rozdziału 1, zanim ekwipunek zostanie wyczyszczony).
VAR krzesiwo_dziadka = false
// Babka Marianna oddała Jaromirowi krzesiwo dziadka.
VAR krzesiwo_od_babki = false
// Hanka przywiązała swoją czerwoną wstążkę do Marzanny (zabrało ją to coś z wody).
VAR wstazka_marzanny = false
// Jaromir obejrzał się za topioną Marzanną (zobaczył rękę i ślepia, trzy dni gorączki).
VAR obejrzal_sie = false
// Jaromir obiecał, że nigdy nie wejdzie do boru.
VAR obietnica_bor = false
// Jaromir z Antkiem sami postawili przewróconą kapliczkę na skraju lasu (pakt z lasem).
VAR kapliczka_podniesiona = false

// ---------- Rozdział piąty (Tartak) ----------
// Jaromir pracował latem w tartaku Urbaniaka (monety).
VAR pracowal_w_tartaku = false
// Jaromir nie ostrzegł Franka i to Franek ściął Stary Dąb — „krew” drzewa chlusnęła mu w twarz.
VAR franek_scial_dab = false
// Co Jaromir zrobił z ubożęciem za piecem: nakarmił (sojusznik), przegnał (bieda w obejściu) albo udał, że go nie widzi.
LIST LosUbozecia = nakarmione, przegnane, zignorowane
VAR uboze = ()

// ---------- Rozdział szósty (Południca) ----------
// Ile razy Jaromir pomylił się w zagadkach Południcy (każda pomyłka = cięcie sierpem; od dwóch — gorączka i blizna).
VAR pomylki_poludnica = 0
// Południca skłoniła się przed odpowiedzią z księgi („Ziarno…”).
VAR poludnica_uklon = false
// Południca ostrzegła Jaromira: „Pan Lasu się budzi, pilnuj kapliczek” (najwyżej jedna pomyłka).
VAR ostrzezenie_poludnicy = false
// Po gorączce została Jaromirowi na ramieniu blizna w kształcie półksiężyca.
VAR blizna_sierpa = false
// Hanka schowała do medalika zasuszony mak z wianka Południcy.
VAR mak_w_medaliku = false
// Jaromir powiedział ojcu o Południcy (inaczej sam nocami pilnuje kapliczek).
VAR powiedzial_ojcu_poludnica = false

// ---------- Rozdział siódmy (Rusałki) ----------
// Na Zaduszki Jaromir zaniósł chleb dla dziadów pod kapliczkę na skraju boru (pakt z lasem: zielony liść dębu).
VAR chleb_dla_dziadow = false
// Jak Jaromir wyrwał Franka rusałkom: piołunem, krzyżem albo siłą (Hanka zawołała Kaśkę po imieniu).
LIST RatunekFranka = piolunem, krzyzem, sila
VAR ratunek_franka = ()
// Co Jaromir zrobił z koralami Kaśki znalezionymi na pomoście.
LIST KoraleKaski = oddane, w_jeziorze, zatrzymane
VAR korale_kaski = ()
// Pierwszy pocałunek pod bzem.
VAR pocalunek = false

// ---------- Rozdział ósmy (Chude lato) ----------
// Co Jaromir zrobił, gdy jednooka żebraczka (licho) poprosiła przy studni o chleb.
LIST LichoPrzyStudni = chleb_przy_studni, przegnal, nie_patrzyl
VAR licho_studnia = ()
// Jaromir poszedł z ojcem do wyrębu Urbaniaka (był przy wypadku).
VAR wyreb_z_ojcem = false
// Noga ojca przygniecionego sosną: złamana (chodzi o kiju) albo strzaskana (o kulach).
LIST NogaOjca = zlamana, strzaskana
VAR noga_ojca = ()
// Nocne pukanie licha: ugościł chlebem (poszło do tartaku), odpędził głownią (spaliło kuźnię kowala) albo przemilczał do świtu.
LIST NocLicha = ugoszczone, odpedzone, przemilczane
VAR licho_noc = ()
// Kapliczki spod boru: obronił tę na skraju lasu, ocalił świątka z wozu albo się nie wtrącał.
LIST KapliczkiDrogi = obronil_kapliczke, ocalil_swiatka, nie_wtracal
VAR kapliczki_drogi = ()
