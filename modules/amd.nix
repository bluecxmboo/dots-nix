{pkgs,lib,config,...}: {
options = {
amd.enable = lib.mkEnableOption "enables amd module";
};
config = lib.mkIf config.amd.enable {
boot.initrd.kernelModules = [ "amdgpu"];
services.xserver.videoDrivers = ["amdgpu"];
hardware.graphics.enable = true;
};
}
