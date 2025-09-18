{pkgs,lib,config,...}: {
options = {
virtualization.enable = lib.mkEnableOption "enables virtualization";
};
config = lib.mkIf config.virtualization.enable {
 programs.virt-manager.enable = true;
users.users.blue.extraGroups = ["libvirtd"];
users.groups.libvirtd.members = ["blue"];
virtualisation.libvirtd.enable = true;
virtualisation.spiceUSBRedirection.enable = true;
services.qemuGuest.enable = true;
services.spice-vdagentd.enable = true;
};
}
