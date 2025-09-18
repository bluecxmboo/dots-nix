{

  inputs =  { 
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    matugen = {
    url = "github:/InioX/Matugen";
    };
     hjem.url = "github:feel-co/hjem";
     nvf = {
     url = "github:NotAShelf/nvf";
     inputs.nixpkgs.follows = "nixpkgs";
};
       };

  outputs = {nixpkgs,nvf,...}@inputs: {
    packages.x86_64-linux.default = 
    (nvf.lib.neovimConfiguration {
    pkgs = import nixpkgs { system = "x86_64-linux";};
    modules = [./modules/nvf.nix];
    }).neovim;
    nixosConfigurations.nixos-btw = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = {inherit inputs;};

      modules = [
        { nix.settings.experimental-features = ["nix-command" "flakes"]; }
        ./configuration.nix
        inputs.hjem.nixosModules.default
	nvf.nixosModules.default
         ];

    };

  };
  
}
