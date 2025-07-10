#!/bin/bash
# Print size of each pic
for img in *.jpg *.png *.jpeg; do
  [ -e "$img" ] || continue
  dimensions=$(identify -format "%wx%h" "$img" 2>/dev/null)
  echo "$img: $dimensions"
done
