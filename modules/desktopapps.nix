{pkgs, lib, config, ...}: {

options = {
desktopapps.enable =
 lib.mkEnableOption "enables desktopapps";
};

config = lib.mkIf config.desktopapps.enable {
programs.git = {
enable = true;
config = {
user.name = "bluecxmboo";
user.email = "blu20745@gmail.com";
init.defaultBranch = "main";
};
};
services.displayManager.ly.enable = true;
programs.fish.enable = true;
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
  fish
  gtk3
  gtk4
  tmux
  zoxide
  vesktop
  hyprpanel
  rofi-power-menu
  pywalfox-native
  librewolf
  fzf
  bibata-cursors
  hyprshot
  clipman
  hyprlock
  libnotify
  p7zip
  unzip
  starship
  brightnessctl
 ];
 fonts.packages = with pkgs; [
noto-fonts
noto-fonts-emoji
nerd-fonts.jetbrains-mono
liberation_ttf
];

};
}
