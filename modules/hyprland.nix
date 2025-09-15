{pkgs,lib,config,...}: {
options = {
hyprland.enable = lib.mkEnableOption "enables hyprland";
};
config = lib.mkIf config.hyprland.enable {
programs.hyprland = {
enable = true;
xwayland.enable = true;
};
xdg.portal.enable = true;
xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-hyprland];
};
}
