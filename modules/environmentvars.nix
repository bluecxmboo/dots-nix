{lib,config,...}: {
options = {
environmentvars.enable = lib.mkEnableOption "enables environmentvars";
};
config = lib.mkIf config.environmentvars.enable {
environment.sessionVariables = {
WLR_NO_HARDWARE_CURSOR = "0";
NIXOS_OZONE_WL = "1";
YAZI_CONFIG_HOME= "/home/blue/matugen/yazi";
};
environment.variables = {
STARSHIP_CONFIG="/home/blue/matugen/starship/starship.toml";
};
};
}
