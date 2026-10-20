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
// Jaromir stawał w zawodach łuczniczych z Hanką i ćwiczył do upadłego (celność przyda się w obławie, rozdz. 11).
VAR celny_strzal = false

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
// Jaromir pożyczył księgę pana Ignacego (widział rysunek starca i podania).
VAR czytal_ksiege = false

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

// ---------- Rozdział dziewiąty (Wesele) ----------
// Jak Jaromir poszedł w swaty: po staremu ze Stasiem i gorzałką albo sam, prosto do kowala.
LIST Swaty = po_staremu, bez_swata
VAR swaty = ()
// Zniknięcie Franka przed weselem: szukał z Antkiem na skraju boru, zostawił to Antkowi (Antek urażony) albo poszedł po radę do babki Hanki.
LIST SzukanieFranka = na_skraju_boru, antek_sam, rada_babki
VAR szukanie_franka = ()
// Starzec w kapeluszu z mchu na skraju lasu w noc oczepin: ugoszczony kołaczem (pakt z lasem), zapytany („Pilnuj jej”) albo zaryglowane drzwi.
LIST WeselnyGosc = ugoszczony_kolaczem, zapytany, zaryglowany
VAR weselny_gosc = ()
// Ojciec dał Jaromirowi w dniu ślubu siekierę dziadka Maćka (i krzesiwo, jeśli babka go nie oddała).
VAR siekiera_dziadka = false
VAR krzesiwo_na_slubie = false

// ---------- Rozdział dziesiąty (Narodziny) ----------
// Jak zabezpieczono kołyskę Marysi przed mamunami.
LIST OchronaKolyski = wstazka_na_raczce, siekiera_pod_kolyska, gromnica_przy_kolysce
VAR ochrona_kolyski = ()
// Trzecia noc: Jaromir zasłonił kołyskę, zawołał Hankę (z krzyżykiem kowala budzi się) albo pogonił mamuny siekierą.
LIST NocMamun = zaslonil, zawolal, pogonil
VAR noc_mamun = ()
// Mamuny podmieniły Marysię na odmieńca.
VAR podmiana = false
// Jak próbowano odwrócić podmianę: rozstaje (mamuna nie oddaje), chrzest odmieńca (mamuny urażone), skorupki z księgi (udało się).
LIST SposobNaOdmienca = rozstaje, chrzest_odmienca, skorupki
VAR sposob_na_odmienca = ()
// Cena układu z mamunami nad jeziorem: skarb z dzieciństwa (na dnie jeziora), dar co roku w noc świętojańską albo własne lata (siwe skronie).
LIST UkladZMamunami = oddany_skarb, dar_swietojanski, oddane_lata
VAR uklad_z_mamunami = ()
// Skarb z dzieciństwa przywiązany do kołyski Marysi (będzie go nosiła na szyi).
VAR skarb_dla_corki = false

// ---------- Rozdział jedenasty (Obława) ----------
// Noc wilków we wsi: obronił oborę z siekierą (biały wilk odwołał watahę) albo pilnował drzwi chałupy.
LIST NocWilkow = bronil_obory, pilnowal_drzwi
VAR noc_wilkow = ()
// Stary pies zginął przy oborze, zagryzając wilka.
VAR pies_zginal = false
// Jaromir obiecał Antkowi, że jeśli biały wilk to Franek, nie dadzą go zabić.
VAR obietnica_antkowi = false
// Obława w młodniku: wydał białego wilka (ranny uszedł do boru), zmylił obławę albo rzucił kamieniem w lufę gajowego.
LIST OblawaWilk = wydal_wilka, zmylil_oblawe, rzucil_kamieniem
VAR oblawa_wilk = ()

// ---------- Rozdział dwunasty (Czuwanie przy zmarłym) ----------
// Jaromir podniósł zmarłemu Wójcikowi wargę i zobaczył dwa rzędy zębów.
VAR sprawdzil_zeby = false
// O północy zmarły wstał: przewrócony twarzą do deski (ugryzł Antka), sierp przy szyi (czarna krew) albo gromnica w dłoniach (wypaliła się).
LIST PolnocStrzygi = na_twarz, sierp_przy_szyi, gromnica_w_dloniach
VAR polnoc_strzygi = ()
// Pochówek Wójcika: po staremu za cmentarnym murem, po księdzowsku albo po księdzowsku z makiem Hanki z medalika.
LIST PochowekWojcika = pochowany_za_murem, pochowany_po_ksiedzowsku, pochowany_z_makiem
VAR pochowek_wojcika = ()
// Po pochówku po księdzowsku strzyga wróciła: rozkopali grób albo Jaromir czuwał przy kołysce (zmarła Wójcikowa).
LIST TrzyNoce = rozkopany_grob, czuwanie_przy_kolysce
VAR trzy_noce = ()

// ---------- Rozdział trzynasty (Wspólny sen) ----------
// Figurka wróciła (Jagna, jarmark, zgliszcza albo bagno), a Jaromir ją odrzucił — i tak sama wróciła do chałupy.
VAR odrzucil_figurke = false
// Józek trzymał figurkę przez noc (zgliszcza: Jaromir pozwolił mu ją zatrzymać).
VAR jozek_mial_figurke = false
// Jaromir pokazał Jagnie figurkę i opowiedział o snach (Jagna wie, czym jest lalka).
VAR zaufal_jagnie = false
// Noc na kładce: siekiera (stwór rozorał Jaromirowi bark), figurka rzucona stworowi albo latarnia (spłonęła kapliczka przy kładce).
LIST NocNaKladce = siekiera_na_kladce, figurka_dla_stwora, latarnia_na_wodzie
VAR noc_na_kladce = ()
// Co się stało z figurką: zamknięta w skrzyni (ogień jej nie wziął), zakopana pod kapliczką, oddana Jagnie albo u stwora.
LIST LosFigurki = figurka_w_skrzyni, figurka_pod_kapliczka, figurka_u_jagny, figurka_u_stwora
VAR los_figurki = ()
