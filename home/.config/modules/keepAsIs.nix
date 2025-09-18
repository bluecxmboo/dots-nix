{pkgs,lib,config,...}: {
options = {
keepAsIs.enable = lib.mkEnableOption "enables keepAsIs";

};
config = lib.mkIf config.keepAsIs.enable {
nixpkgs.config.allowUnfree = true;
system.stateVersion = "25.05"; 
};
}
