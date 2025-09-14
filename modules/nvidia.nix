{pkgs,lib,config,...}: {
options = { nvidia.enable = lib.mkEnableOption "enables nvidia drivers";
};
config = lib.mkIf config.nvidia.enable {
hardware.graphics.enable = true;
services.xserver.videoDrivers = ["nvidia"];

hardware.nvidia = {
modesetting.enable = true;
powerManagement.enable = false;
powerManagement.finegrained = false;
open = true;
nvidiaSettings = true;
package = config.boot.kernelPackages.nvidiaPackages.stable;
};

};
}
