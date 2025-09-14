{pkgs,lib,config,...}: {
options = {
users.enable = lib.mkEnableOption "enables users";
};
config = lib.mkIf config.users.enable {
 users.users.blue = {
    isNormalUser = true;
    description = "blue";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    shell = pkgs.fish;
    packages = with pkgs; [];
  };
};
}
