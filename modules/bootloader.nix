{pkgs,lib,config,...}: {
options = {
bootloader.enable = lib.mkEnableOption "enables bootloader";
};
config = lib.mkIf config.bootloader.enable {
boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
};
}
