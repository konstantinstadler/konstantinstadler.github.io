#!/bin/bash
shopt -s nullglob
for img in *.jpg *.png; do
  mogrify -resize 600x400^ -gravity center -crop 600x400+0+0 +repage "$img"
done

