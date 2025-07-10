#!/bin/bash

# converst all images to 400px height
for img in *.jpg *.png; do
  [ -e "$img" ] || continue
  convert "$img" -resize x400 "$img"
done

