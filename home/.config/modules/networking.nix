{pkgs,lib,config,...}: {
options = {
networking.enable = lib.mkEnableOption "enables networking";
};
config = lib.mkIf config.networking.enable {
networking.hostName = "nixos-btw";
networking.networkmanager.enable = true;
};
}
