{

  inputs =  { 
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    matugen = {
    url = "github:/InioX/Matugen";
    };
     hjem.url = "github:feel-co/hjem";
  };

  outputs = {...}@inputs: {

    nixosConfigurations.nixos-btw = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = {inherit inputs;};

      modules = [
        { nix.settings.experimental-features = ["nix-command" "flakes"]; }
        ./configuration.nix
        inputs.hjem.nixosModules.default
         ];

    };

  };
  
}
