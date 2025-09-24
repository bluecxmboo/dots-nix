{pkgs,lib,config,...}: {

options = { gaming.enable = lib.mkEnableOption "enables gaming";
};

config = lib.mkIf config.gaming.enable {
programs. steam = {
enable = true;
protontricks.enable = true;
};
programs.gamemode.enable = true;
environment.systemPackages = with pkgs; [
lutris
wine64
wine64Packages.wayland
heroic
winetricks
protonup-qt
linuxKernel.packages.linux_6_16.xone
 wineWowPackages.stable
];
};
}
