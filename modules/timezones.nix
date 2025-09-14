{pkgs,lib,config,...}: {
options = {
timezones.enable = lib.mkEnableOption "enables timezone";
};
config = lib.mkIf config.timezones.enable {
time.timeZone = "Asia/Amman";
};
}
