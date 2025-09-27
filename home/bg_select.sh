#!/bin/bash
folder="/home/blue/dots-nix/home/wallpapers/"
sel=$(rofi -dmenu -config ~/dots-nix/home/.config/rofi/bgselector.rasi < <(for f in "$folder"/*.{jpg,png}; do [ -e "$f" ] && echo -en "$f\0icon\x1f$f\n"; done))
/home/blue/dots-nix/home/.local/bin/walset-backend $sel
