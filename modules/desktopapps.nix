{pkgs, lib, config, inputs, ...}: {

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
programs.tmux.enable = true;
services.displayManager.ly.enable = true;
programs.fish.enable = true;
environment.systemPackages = with pkgs; [
 # neovim
  git
  fastfetch
  hyprcursor
  #matugen
  swww
  btop
  rofi
  yazi
  kitty
  fish
  gtk3
  gtk4
  smfh
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
  pywal16
inputs.matugen.packages.${system}.default
inputs.self.packages.${pkgs.system}.default
 ];
 };
}
