#! /usr/bin/env bash
echo "::power mode"
hyprctl reload
if [[ "$1" = "looks" ]]; then
#looks
hyprctl --batch "\
keyword animations:enabled 1;\
keyword general:border_size 2;\
keyword general:gaps_out 13;\
keyword general:gaps_in 5;\
keyword decoration:shadow:enabled 1;\
keyword decoration:blur:enabled 1;\
keyword misc:vfr true"
fi

if [[ "$1" = "power-saver" ]]; then
#power saver
hyprctl --batch "\
keyword animations:enabled 0;\
keyword general:border_size 1;\
keyword general:gaps_out 13;\
keyword general:gaps_in 5;\
keyword decoration:shadow:enabled 0;\
keyword decoration:blur:enabled 0;\
keyword decoration:rounding 0;\
keyword misc:vfr true"
fi


