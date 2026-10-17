# openNAS case for ATX: assembly guide

🇵🇱 [Wersja polska](README.pl.md) · [instrukcja 3D po polsku](https://shhatrat.github.io/openNAS-case-for-ATX-instruction/pl/)

A LEGO-style assembly guide for a 3D-printed open-frame NAS case for ATX motherboards.

- **Interactive 3D guide:** https://shhatrat.github.io/openNAS-case-for-ATX-instruction/
- **Printable PDF:** [instruction.pdf](instruction.pdf) ([online](https://shhatrat.github.io/openNAS-case-for-ATX-instruction/instruction.pdf))
- **Original design (Printables):** https://www.printables.com/model/1437256-open-nas-case-for-atx

> The case was designed by **Oskari Nykänen** and published under
> [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).
> The author did not include assembly instructions. This repository adds them.

## What it is

An open frame, about **330 × 235 × 162 mm**, that holds:

- an ATX, micro-ATX or mini-ITX motherboard (not E-ATX), lying flat on top,
- an ATX power supply on the left, power socket facing the front,
- **8 × 3.5″ drives** on the right, in two cages (4 front, 4 rear), with vibration-damping TPU rails,
- 1–2 × 140 mm fans (front, optionally rear),
- optionally two 3 mm LEDs (power and HDD).

## The 3D guide

The page shows the real models from the STL files. Every step has an assembly animation, a "needed in this step" box with thumbnails, and a list of screws. Heat-set insert locations are marked in gold. Drag to rotate the model and use the ← → keys to change steps. Link to a step directly, e.g. [`#step-7`](https://shhatrat.github.io/openNAS-case-for-ATX-instruction/#step-7).

### Steps

1. **Left wall**: `foot-left` stands upright, with the inserts in its top edge.
2. **PSU supports**: `psu-support` lies on the lower bar, and `psu-bracket` stands behind the front bar.
3. **Middle wall**: `foot-right` catches the other ends of the supports. Drive 2 screws from the front and 4 from below.
4. **Power supply**: lower it in from above and fix it with 4 × 6-32 screws through the frame.
5. **Drive cages**: 2 × `hdd-rack`, parallel to the walls.
6. **Motherboard plate**: join the two halves with the lap joint and screw it to the four walls with 8 × M3.
7. **Drives with rails**: the TPU rail goes on the side of the drive that faces the middle. Slide the drives in from the right through both cages.
8. **Screw in the drives**: 2 screws per drive through the outer bars of the cages.
9. **Rear brace**: `rear-brace-long`.
10. **Fan mounts**: `front-brace-with-fanmount` and `fanmount-top`.
11. **140 mm fan**: with TPU washers.
12. **Motherboard**: 7 × M3 screws into the standoffs.
13. **LEDs and feet.**

> Screw in the drives **before** fitting the braces and the fan. They cover the screws of the lowest drive afterwards. The author mentions this too.

## Printed parts

The files are in [`stl/`](stl). They are already oriented for printing and need no supports.

| File | Qty | Material | Purpose |
|---|---|---|---|
| `foot-left.stl` | 1 | ABS | Left wall of the PSU bay |
| `foot-right.stl` | 1 | ABS | Middle wall, LED holes |
| `hdd-rack.stl` | **2** | ABS | Drive cages, 8 × 3.5″ drives in total |
| `mb-mount-left.stl` + `mb-mount-right.stl` | 1+1 | ABS | Motherboard plate |
| `psu-bracket.stl` | 1 | ABS | PSU frame (ATX pattern) |
| `psu-support.stl` | 1 | ABS | Bar under the PSU |
| `rear-brace-long.stl` | 1 | ABS | Rear brace, 330 mm (bed > 240 mm) |
| `front-brace-with-fanmount.stl` | 1 | ABS | Front brace and lower fan mount |
| `fanmount-top.stl` | 1 | ABS | Upper fan mount |
| `hdd-rail.stl` | 8 | TPU | Drive rails |
| `washer.stl` | 4 | TPU | Fan washers |

**Variants:** `rear-brace-long-with-fanmount` (340 mm) or `rear-brace-medium-with-fanmount` with a second `fanmount-top` give you a rear fan. `rear-brace-medium` and `rear-brace-short` are shorter braces for smaller printers. `fanmount-bottom` is the lower fan mount on its own.

## Hardware to buy

| Item | Qty |
|---|---|
| M3 heat-set inserts (Ø4 hole) | ≈30 |
| M3 socket head screws, 8–10 mm | 23 |
| M3 × 6 mm screws (motherboard) | 7 |
| M4 inserts + M4 × ~30 mm screws (fan) | 4 + 4 |
| Drive screws 6-32 UNC | 40 |
| PSU screws 6-32 UNC | 4 |
| 140 mm fan | 1–2 |
| 3 mm LED (optional) | 2 |
| Rubber feet | 8 |

## Where this guide comes from

I reconstructed the layout from the geometry of the STL files. Hole spacings match between parts to the millimetre:

- plate holes and wall top edges: 31.5 and 205.5 mm,
- PSU frame: the ATX standard (114 / 138 / 64.5 mm),
- rails: 3.5″ drive side holes (60 / 41.6 mm),
- fan mounts: 125 mm.

Two things are less certain:

- **The number of `hdd-rack` parts (2)** follows from the four rows of holes in the plate and in the long brace.
- **The order of the steps** is my suggestion, not the author's.

## License

The STL files and the case design are by Oskari Nykänen ([Printables](https://www.printables.com/model/1437256-open-nas-case-for-atx)), published under
[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/). This guide is a derivative work under the same license. See [LICENSE.md](LICENSE.md).
