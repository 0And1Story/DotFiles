#!/bin/bash

SRC="./.config"
DST="$HOME/.config"

echo "copying..."
cp $SRC $DST --recursive --update

echo "done."
