#!/usr/bin/env bash

comm -13 \
    <(grep -h -E '^\s*(linux|initrd)\s+/EFI/nixos/' /boot/loader/entries/*nixos*.conf 2>/dev/null | sed 's|.*/EFI/nixos/||' | sort -u) \
    <(find /boot/EFI/nixos/ -maxdepth 1 -name '*.efi' -printf '%f\n' | sort) \
    | sed 's|^|/boot/EFI/nixos/|' \
    | xargs -d '\n' --no-run-if-empty sudo rm --verbose
