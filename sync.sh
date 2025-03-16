#!/bin/bash

SRC="$HOME/.config"
DST="./.config"

cat sync.include |
  while read file; do
    if [ "${file:0:1}" = "#" ]; then # check for comments
      continue
    fi

    if [ $file ]; then # if the line is not empty
      echo -e "copying: $file"
      mkdir -p "$(dirname "$DST/$file")"
      cp "$SRC/$file" "$DST/$file" --recursive --update
    fi
  done

echo "done."
