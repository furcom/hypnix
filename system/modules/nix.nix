{ lib, pkgs, ... }:
{
  nix = {
    gc = {
      dates = "daily";
      randomizedDelaySec = "0";
      persistent = true;
      automatic = true;
      options = ''
        --delete-generations 7d
      '';
    };
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  nixpkgs = {
    config = {
      allowBroken = true;
      allowUnfree = true; 
    };
  };

  environment.systemPackages = with pkgs; [
    nix-prefetch-git
    nixos-generators
    nvd
    pkg-config
  ];

}
