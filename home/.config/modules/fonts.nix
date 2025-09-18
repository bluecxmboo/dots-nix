{pkgs,lib,config,...}: {
options = {
fonts.enable = lib.mkEnableOption "enables fonts";
};
config = lib.mkIf config.fonts.enable {
fonts.packages = with pkgs; [
noto-fonts
noto-fonts-emoji
nerd-fonts.jetbrains-mono
liberation_ttf
];
};
}
