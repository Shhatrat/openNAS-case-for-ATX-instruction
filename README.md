# openNAS case for ATX: instrukcja montażu

Instrukcja montażu w stylu LEGO do drukowanej w 3D, otwartej obudowy NAS na płytę ATX.

- **Interaktywna instrukcja 3D:** https://shhatrat.github.io/openNAS-case-for-ATX-instruction/
- **PDF do druku:** [instrukcja.pdf](instrukcja.pdf) ([wersja online](https://shhatrat.github.io/openNAS-case-for-ATX-instruction/instrukcja.pdf))
- **Oryginalny projekt (Printables):** https://www.printables.com/model/1437256-open-nas-case-for-atx

> Projekt obudowy przygotował **Oskari Nykänen** i opublikował na licencji
> [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).
> Autor nie dołączył instrukcji montażu. To repozytorium ją uzupełnia.

## Co to jest

Rama jest otwarta i ma ok. **330 × 235 × 162 mm**. Mieści:

- płytę główną ATX, micro-ATX lub mini-ITX (nie E-ATX), która leży płasko na górze,
- zasilacz ATX, który stoi po lewej, gniazdem do przodu,
- **8 dysków 3,5″** po prawej, w dwóch klatkach (4 dyski z przodu i 4 z tyłu), z szynami TPU tłumiącymi drgania,
- 1–2 wentylatory 140 mm (przód, opcjonalnie też tył),
- opcjonalnie 2 diody LED 3 mm (power i HDD).

## Instrukcja 3D

Strona pokazuje prawdziwe modele z plików STL. Każdy krok ma animację montażu, ramkę „potrzebne części” z miniaturami i listę śrub. Miejsca na wkładki gwintowane są zaznaczone na złoto. Model można obracać myszką, a klawisze ← → przełączają kroki. Konkretny krok otworzysz linkiem, np. [`#krok-7`](https://shhatrat.github.io/openNAS-case-for-ATX-instruction/#krok-7).

### Kroki

1. **Lewa ściana**: `foot-left` stoi pionowo, a wkładki są w górnej krawędzi.
2. **Wsporniki zasilacza**: `psu-support` leży na dolnej belce, a `psu-bracket` stoi za przednią belką.
3. **Ściana środkowa**: `foot-right` łapie drugie końce wsporników. Wkręcasz 2 śruby od przodu i 4 od spodu.
4. **Zasilacz**: opuszczasz go od góry i przykręcasz 4 śrubami 6-32 przez ramkę.
5. **Klatki dysków**: 2× `hdd-rack`, równolegle do ścian.
6. **Płyta pod płytę główną**: dwie połówki łączysz na zakładkę i przykręcasz 8× M3 do czterech ścian.
7. **Dyski z szynami**: szyna TPU idzie na bok dysku zwrócony do środka. Dyski wsuwasz z prawej strony przez obie klatki.
8. **Przykręcenie dysków**: 2 śruby na dysk przez zewnętrzne belki klatek.
9. **Tylna belka**: `rear-brace-long`.
10. **Uchwyty wentylatora**: `front-brace-with-fanmount` i `fanmount-top`.
11. **Wentylator 140 mm**: z podkładkami TPU.
12. **Płyta główna**: 7 śrub M3 do słupków.
13. **LED i nóżki.**

> Dyski przykręć **przed** belkami i wentylatorem. Później zasłaniają one śruby najniższego dysku. Autor też o tym wspomina.

## Części do wydruku

Pliki leżą w katalogu [`stl/`](stl). Są już ułożone do druku i nie wymagają podpór.

| Plik | Szt. | Materiał | Do czego |
|---|---|---|---|
| `foot-left.stl` | 1 | ABS | Lewa ściana zatoki zasilacza |
| `foot-right.stl` | 1 | ABS | Ściana środkowa, otwory na LED |
| `hdd-rack.stl` | **2** | ABS | Klatki dysków, razem 8 dysków 3,5″ |
| `mb-mount-left.stl` + `mb-mount-right.stl` | 1+1 | ABS | Płyta pod płytę główną |
| `psu-bracket.stl` | 1 | ABS | Ramka zasilacza (rozstaw ATX) |
| `psu-support.stl` | 1 | ABS | Belka pod zasilacz |
| `rear-brace-long.stl` | 1 | ABS | Tylna belka, 330 mm (stół > 240 mm) |
| `front-brace-with-fanmount.stl` | 1 | ABS | Przednia belka i dolny uchwyt wentylatora |
| `fanmount-top.stl` | 1 | ABS | Górny uchwyt wentylatora |
| `hdd-rail.stl` | 8 | TPU | Szyny dysków |
| `washer.stl` | 4 | TPU | Podkładki pod wentylator |

**Warianty:** `rear-brace-long-with-fanmount` (340 mm) lub `rear-brace-medium-with-fanmount` z drugą sztuką `fanmount-top` dają tylny wentylator. `rear-brace-medium` i `rear-brace-short` to krótsze belki na mniejsze drukarki. `fanmount-bottom` to sam dolny uchwyt wentylatora.

## Elementy kupne

| Element | Szt. |
|---|---|
| Wkładki gwintowane M3 (otwór Ø4) | ≈30 |
| Śruby M3 imbusowe 8–10 mm | 23 |
| Śruby M3 × 6 mm (płyta główna) | 7 |
| Wkładki M4 + śruby M4 × ~30 mm (wentylator) | 4 + 4 |
| Śruby do dysków 6-32 UNC | 40 |
| Śruby zasilacza 6-32 UNC | 4 |
| Wentylator 140 mm | 1–2 |
| LED 3 mm (opcjonalnie) | 2 |
| Gumowe nóżki | 8 |

## Skąd ta instrukcja

Ułożenie części odtworzyłem z geometrii plików STL. Rozstawy otworów pasują między częściami co do milimetra:

- otwory płyty i górnych krawędzi ścian: 31,5 i 205,5 mm,
- ramka zasilacza: standard ATX (114 / 138 / 64,5 mm),
- szyny: boczne otwory dysku 3,5″ (60 / 41,6 mm),
- uchwyty wentylatora: 125 mm.

Mniej pewne są dwie rzeczy:

- **Liczba `hdd-rack` (2 szt.)** wynika z czterech rzędów otworów w płycie i w długiej belce.
- **Kolejność kroków** to moja propozycja, a nie oryginał autora.

## Licencja

Pliki STL i projekt obudowy przygotował Oskari Nykänen ([Printables](https://www.printables.com/model/1437256-open-nas-case-for-atx)) i opublikował na licencji
[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/). Instrukcja jest utworem zależnym i ma tę samą licencję. Szczegóły są w [LICENSE.md](LICENSE.md).
