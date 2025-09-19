#!/bin/bash
folder="/home/blue/dotfiles/wallpapers/wallpapers"
sel=$(rofi -dmenu -theme "fullscreen-preview" < <(for f in "$folder"/*.{jpg,png}; do [ -e "$f" ] && echo -en "$f\0icon\x1f$f\n"; done))
/home/blue/dots-nix/home/.local/bin/walset-backend $sel
