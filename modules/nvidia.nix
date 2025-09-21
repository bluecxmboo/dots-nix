{lib,config,...}: {
options = { nvidia.enable = lib.mkEnableOption "enables nvidia drivers";
};
config = lib.mkIf config.nvidia.enable {
environment.etc."nvidia/nvidia-application-profiles-rc.d/50-limit-free-buffer-pool.json".text = builtins.toJSON {
        rules =
          map (proc: {
            pattern = {
              feature = "procname";
              matches = proc;
            };
            profile = "No VidMem Reuse";
          }) [
            "Hyprland"
            ".Hyprland-wrapped"
            "Discord"
            ".Discord-wrapped"
            "DiscordCanary"
            ".DiscordCanary-wrapped"
            "electron"
            ".electron-wrapped"
            "librewolf"
            ".librewolf-wrapped"
            ".librewolf-wrapped_"
            "losslesscut"
          ];
      };
    

hardware.graphics.enable = true;
services.xserver.videoDrivers = ["nvidia"];

hardware.nvidia = {
modesetting.enable = true;
open = true;
nvidiaSettings = true;
package = config.boot.kernelPackages.nvidiaPackages.stable;
};
 };

}

