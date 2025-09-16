{ config, pkgs,inputs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./modules/desktopapps.nix
      ./modules/gaming.nix
      ./modules/users.nix
      ./modules/hyprland.nix
      ./modules/environmentvars.nix
      ./modules/nvidia.nix
      ./modules/kernel.nix
      ./modules/bootloader.nix
      ./modules/networking.nix
      ./modules/timezones.nix
      ./modules/locale.nix
      ./modules/keyboard.nix
      ./modules/fonts.nix
      ./modules/virtualization.nix
      ./modules/keepAsIs.nix
      ./modules/amd.nix
    ];
    amd.enable = false;
    virtualization.enable = true;
    locale.enable = true;
    timezones.enable = true;
    networking.enable = true;
    bootloader.enable = true;
    nvidia.enable = true;
    environmentvars.enable = true;
    hyprland.enable = true;
    users.enable = true;
   desktopapps.enable = true;
   gaming.enable = true;
   kernel.enable = true;
   keepAsIs.enable = true;
   fonts.enable = true;
   }
