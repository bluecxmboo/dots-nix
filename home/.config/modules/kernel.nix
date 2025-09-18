{pkgs,lib,config,...}: {
options = {
kernel.enable = lib.mkEnableOption "enables kernel package";
};
config = lib.mkIf config.kernel.enable {
boot.kernelPackages = pkgs.linuxPackages_latest;
};
}
