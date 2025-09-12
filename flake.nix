{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = inputs: {

    nixosConfigurations.nixos-btw = inputs.nixpkgs.lib.nixosSystem {
      modules = [
        { nix.settings.experimental-features = ["nix-command" "flakes"]; }
        ./configuration.nix
      ];
    };

  };
  
}
