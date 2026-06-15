#!/usr/bin/env bash

mkdir -p /home/aksh/Pictures/Screenshot
grim -g "$(slurp)" - | swappy -f -
