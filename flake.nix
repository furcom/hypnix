{
  description = "hypnix .dotfiles";

  inputs = {
    nixpkgs = { url = "github:nixos/nixpkgs/nixos-unstable"; };
    home-manager = { url = "github:nix-community/home-manager"; inputs.nixpkgs.follows = "nixpkgs"; };
    hyprland = { url = "github:hyprwm/Hyprland"; };
    hyprland-plugins = { url = "github:hyprwm/hyprland-plugins"; inputs.hyprland.follows = "hyprland"; };
    #hyprpanel = { url = "github:Jas-SinghFSU/HyprPanel"; };
  };

  outputs = { nixpkgs, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
    };
  in
  {
    nixosConfigurations = {
      hypnix = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs system; };
        modules = [
          ./system/system.nix
          ./home/home.nix
          #{ nixpkgs.overlays = [ inputs.hyprpanel.overlay ]; }
        ];
      };
    };

  };
}
