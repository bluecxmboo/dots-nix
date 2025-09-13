{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

programs.hyprland = {
enable = true;
xwayland.enable = true;
};
programs. steam = {
enable = true;
protontricks.enable = true;
};
programs.fish.enable = true;
services.displayManager.ly.enable = true;
environment.sessionVariables = {
WLR_NO_HARDWARE_CURSOR = "0";
NIXOS_OZONE_WL = "1";
};
hardware.graphics.enable = true;
services.xserver.videoDrivers = ["nvidia"];

hardware.nvidia = {
modesetting.enable = true;
powerManagement.enable = false;
powerManagement.finegrained = false;
open = true;
nvidiaSettings = true;
package = config.boot.kernelPackages.nvidiaPackages.stable;
};
programs.git = {
enable = true;
config = {
user.name = "bluecxmboo";
user.email = "blu20745@gmail.com";
init.defaultBranch = "main";
};
};
boot.kernelPackages = pkgs.linuxPackages_latest;
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos-btw"; # Define your hostname.

  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Amman";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  users.users.blue = {
    isNormalUser = true;
    description = "blue";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
users.users.blue.shell = pkgs.fish;
  nixpkgs.config.allowUnfree = true;
fonts.packages = with pkgs; [
noto-fonts
noto-fonts-emoji
nerd-fonts.jetbrains-mono
liberation_ttf
];
  environment.systemPackages = with pkgs; [
   neovim
   git
   stow
   fastfetch
   hyprcursor
   matugen
   swww
   btop
   rofi-wayland
   yazi
   kitty
   nwg-look
   fish
   gtk3
   gtk4
   tmux
   zoxide
   vesktop
   hyprpanel
   rofi-power-menu
   ly
   pywalfox-native
   librewolf
   fzf
   bibata-cursors
   hyprshot
   clipman
   hyprlock
   lutris
   heroic
   qbittorrent
   linuxKernel.packages.linux_6_16.xone
   wineWowPackages.stable
   winetricks
   protonup-qt
   libnotify
  ];


    system.stateVersion = "25.05"; 
}
