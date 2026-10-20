// openNAS dust cover — parametric panel generator
// Select part via PART variable:
//   openscad -D 'PART="top-a"' cover.scad -o stl/cover-top-a.stl
//
// Parts:
//   top-a, top-b
//   front-lower-a, front-lower-b, front-upper-a, front-upper-b
//   rear-lower-a,  rear-lower-b,  rear-upper-a,  rear-upper-b
//   side-left-lower, side-left-upper
//   side-right-lower, side-right-upper

// ── Parameters ────────────────────────────────────────────────
INNER_W = 336;   // inner cavity front-to-back
INNER_D = 241;   // inner cavity left-to-right
H_LOWER = 162;   // lower section height (matches frame)
H_UPPER = 170;   // upper section height (clears cooler)
WALL    = 3;     // panel thickness
BORD    = 15;    // solid border on all edges
LAP     = 15;    // lap joint overlap length
HEX_R   = 2.0;  // hex hole circumradius
HEX_GAP = 1.5;  // min wall between hex holes
TOL     = 0.2;  // lap joint clearance

// ── Derived ───────────────────────────────────────────────────
OW  = INNER_W + 2*WALL;  // outer width: 342
OD  = INNER_D + 2*WALL;  // outer depth: 247
HW  = OW / 2;            // half-width: 171
SD  = INNER_D;           // side panel span: 241

HDX = HEX_R*2 + HEX_GAP;
HDY = HEX_R*sqrt(3) + HEX_GAP;

// ── Base panel: solid border + hex mesh ───────────────────────
// recess: mesh start-z (top panel only, creates flat top surface)
module panel_base(w, h, recess=0) {
    difference() {
        cube([w, h, WALL]);
        for (c = [0 : ceil((w-2*BORD)/HDX)+1]) {
            for (r = [0 : ceil((h-2*BORD)/HDY)+1]) {
                ox = (c % 2 == 0) ? 0 : HDY/2;
                x  = BORD + c*HDX;
                y  = BORD + r*HDY + ox;
                if (x + HEX_R <= w-BORD && y + HEX_R <= h-BORD &&
                    x - HEX_R >= BORD    && y - HEX_R >= BORD)
                    translate([x, y, recess-0.1])
                        cylinder(r=HEX_R, h=WALL-recess+0.2, $fn=6);
            }
        }
    }
}

// ── Lap joint cuts ────────────────────────────────────────────
// Vertical (halves joining side-by-side along X):
//   "L" = left half:  remove z=[WALL/2..WALL] on rightmost LAP mm
//   "R" = right half: remove z=[0..WALL/2]    on leftmost  LAP mm
module cut_lap_v(w, h, side) {
    half = WALL/2;
    if (side == "L")
        translate([w-LAP, -0.1, half-TOL/2])
            cube([LAP+0.1, h+0.2, half+TOL/2+0.1]);
    if (side == "R")
        translate([-0.1, -0.1, -0.1])
            cube([LAP+0.1, h+0.2, half+TOL/2+0.1]);
}

// Horizontal (lower/upper sections joining along Y):
//   "lower": remove z=[WALL/2..WALL] on topmost    LAP mm
//   "upper": remove z=[0..WALL/2]    on bottommost LAP mm
module cut_lap_h(w, h, pos) {
    half = WALL/2;
    if (pos == "lower")
        translate([-0.1, h-LAP, half-TOL/2])
            cube([w+0.2, LAP+0.1, half+TOL/2+0.1]);
    if (pos == "upper")
        translate([-0.1, -0.1, -0.1])
            cube([w+0.2, LAP+0.1, half+TOL/2+0.1]);
}

// ── Panel types ───────────────────────────────────────────────
module top_panel(v_side) {
    difference() {
        panel_base(HW, OD, recess=1);
        cut_lap_v(HW, OD, v_side);
    }
}

module side_panel(h, h_pos) {
    difference() {
        panel_base(SD, h);
        cut_lap_h(SD, h, h_pos);
    }
}

module fb_panel(h, v_side, h_pos) {
    difference() {
        panel_base(HW, h);
        cut_lap_v(HW, h, v_side);
        cut_lap_h(HW, h, h_pos);
    }
}

// ── Part selector ─────────────────────────────────────────────
PART = "top-a";

if (PART == "top-a") top_panel("L");
if (PART == "top-b") top_panel("R");

if (PART == "front-lower-a") fb_panel(H_LOWER, "L", "lower");
if (PART == "front-lower-b") fb_panel(H_LOWER, "R", "lower");
if (PART == "front-upper-a") fb_panel(H_UPPER, "L", "upper");
if (PART == "front-upper-b") fb_panel(H_UPPER, "R", "upper");

if (PART == "rear-lower-a")  fb_panel(H_LOWER, "L", "lower");
if (PART == "rear-lower-b")  fb_panel(H_LOWER, "R", "lower");
if (PART == "rear-upper-a")  fb_panel(H_UPPER, "L", "upper");
if (PART == "rear-upper-b")  fb_panel(H_UPPER, "R", "upper");

if (PART == "side-left-lower")  side_panel(H_LOWER, "lower");
if (PART == "side-left-upper")  side_panel(H_UPPER, "upper");
if (PART == "side-right-lower") side_panel(H_LOWER, "lower");
if (PART == "side-right-upper") side_panel(H_UPPER, "upper");
