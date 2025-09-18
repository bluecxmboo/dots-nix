{pkgs,lib,config,inputs,...}: {
options = {
hjem.enable = lib.mkEnableOption "enables hjem";
};
config = lib.mkIf config.hjem.enable {
hjem.users.blue.enable = true;
hjem.clobberByDefault = true;
hjem.linker = pkgs.smfh;
hjem.users.blue = {
        directory = "/home/blue";
        files =  (import ../findFiles.nix {inherit lib;});
        };
        };
}
