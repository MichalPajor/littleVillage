// ------------------------------------------------------------
//  Rozdział pierwszy — Wilcze Doły
// ------------------------------------------------------------

=== rozdzial_1 ===
# tlo: wies_noc
# rozdzial: Rozdział pierwszy
# tytul: Wilcze Doły
Zmierzch przyszedł nad Wilcze Doły szybciej niż zwykle. Od boru ciągnęło chłodem, choć był dopiero wrzesień, a psy u Jaśkowiaków ucichły wszystkie naraz, jakby ktoś im gardła ścisnął.
Stary Bartłomiej stał przy żurawiu i patrzył na drogę do miasta. Sześć godzin piechotą przez las. Za dnia to nic. Po zmroku nikt w Wilczych Dołach tej drogi nie brał, odkąd na ścieżce znaleźli sierp Wojtka Kani. Sam sierp. Wojtka nigdy.
– Znowu widzieli światło na mokradłach – szepnęła matka, zamykając okiennice. – Tam, gdzie chata Zmory. Nie patrz w las, dziecko. _On patrzy z powrotem._
Na progu obory coś zostawiło ślady. Nie wilcze – palce za długie. Prowadziły prosto do stodoły, gdzie od rana nie odezwała się krowa. Drzwi były uchylone, a na desce przy klamce czerniało coś lepkiego.
# ozdobnik
# pytanie: Co robisz?
*   [Zapalam kaganek i idę do stodoły.]
    ~ odwaga += 1
    -> stodola
*   [Budzę ojca i biorę siekierę spod pieca.]
    ~ ojciec_wie = true
    -> ojciec
*   [Zostaję w izbie. Zamykam drzwi na skobel i modlę się do świtu.]
    -> izba

= stodola
~ ekwipunek += kaganek
Zdejmujesz kaganek z haka nad piecem. Krzesiwo sypie iskrami raz, drugi, wreszcie knot łapie ogień i izba kurczy się do żółtego kręgu.
Na dworze jest ciszej, niż powinno. Nie cykają świerszcze. Nawet wiatr w topolach jakby wstrzymał oddech.
Drzwi stodoły skrzypią, gdy je pchasz. W środku pachnie sianem – i czymś jeszcze. Słodkawo. Jak w dzień świniobicia.
Krowa leży na klepisku. Oczy ma otwarte. Na szyi dwa ciemne ślady, równe jak od kolców. # dalej
Z ciemności pod sąsiekiem ktoś się śmieje. Cicho, jak dziecko, które schowało się za piecem i czeka, aż je znajdziesz.
-> koniec_sceny

= ojciec
~ ekwipunek += siekiera
Ojciec śpi na ławie przy piecu, w butach, jak zawsze od tamtej jesieni. Budzi się, zanim zdążysz go dotknąć.
– Ślady? – pyta tylko. Nie czeka na odpowiedź. Sięga pod piec i podaje ci siekierę, a sam bierze widły.
Idziecie razem przez podwórze. Ojciec przystaje przy studni i spluwa przez lewe ramię. Nigdy wcześniej tego nie robił. # dalej
Stodoła jest pusta. Krowy nie ma. Na klepisku zostały tylko ślady prowadzące do tylnej ściany – i dalej, przez szparę między deskami, w stronę boru.
– Nie mów matce – szepcze ojciec. – Rano pójdę do księdza.
-> koniec_sceny

= izba
Zasuwasz skobel. Matka kiwa głową, jakby na to czekała, i zapala gromnicę pod obrazem.
Modlicie się długo. W połowie drugiej dziesiątki różańca coś drapie w okiennicę. Powoli. Od góry do dołu. Potem jeszcze raz, niżej, na wysokości klamki.
Matka nie przerywa modlitwy. Tylko jej głos robi się cieńszy. # dalej
O świcie na progu leży garść pierza i kurza łapka, starannie ułożona, jak podarunek.
-> koniec_sceny

= koniec_sceny
# ozdobnik
{ ekwipunek ? kaganek: Kaganek w twojej dłoni drży, choć nie ma wiatru. }
{ ojciec_wie: Wiesz jedno: nie jesteś w tym sam. | Nikt poza tobą nie wie jeszcze, co przyszło do Wilczych Dołów. }
_Ciąg dalszy nastąpi…_
-> END
