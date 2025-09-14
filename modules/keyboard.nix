{pkgs,lib,config,...}: {
options = {
keyboard.enable = lib.mkEnableOption "enables keyboard";
};
config = lib.mkIf config.keyboard.enable {
services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
};
}
