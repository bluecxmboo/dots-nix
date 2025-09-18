{lib,config, inputs, ...}: {
   hjem.extraModules = [
    inputs.hjem-impure.hjemModules.default                  # imports the hjemModule
  ];
  hjem.users.blue = {
    enable = true;
    directory = config.users.users.blue.home;
    clobberFiles = lib.mkForce true;

    
    impure = {
      enable = true;
      dotsDir = "${../home}";
      dotsDirImpure = "/home/blue/dots-nix/home";
    };
 home.files = import ../findImpure.nix lib ../home (config.hjem.users.blue.impure.dotsDir);
  };
}
