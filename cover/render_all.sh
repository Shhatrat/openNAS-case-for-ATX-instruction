#!/bin/bash
set -e
PARTS=(
  top-a top-b
  front-lower-a front-lower-b front-upper-a front-upper-b
  rear-lower-a  rear-lower-b  rear-upper-a  rear-upper-b
  side-left-lower side-left-upper
  side-right-lower side-right-upper
)
mkdir -p stl
for PART in "${PARTS[@]}"; do
  echo "Rendering $PART..."
  openscad -D "PART=\"$PART\"" cover.scad -o "stl/cover-${PART}.stl" 2>/dev/null
  echo "  done: stl/cover-${PART}.stl"
done
echo "ALL DONE"
