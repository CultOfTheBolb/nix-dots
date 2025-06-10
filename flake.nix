{
  description = "System Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix/";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... } @ inputs:
  let
    system = "x86_64-linux";
    user = "yog-sothoth";
  in
  {
    nixosConfigurations.${user} = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs user; };

      modules = [
        ./nixos/configuration.nix
	./users/${user}/hardware-configuration.nix
	inputs.stylix.nixosModules.stylix
      ];
    };

    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};

      extraSpecialArgs = { inherit inputs user; };

      modules = [
        ./home-manager/home.nix
	inputs.stylix.homeModules.stylix
      ];
    };
  };
}
