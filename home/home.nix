{ inputs, pkgs, ... }:
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  environment.systemPackages = with pkgs; [ home-manager ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
    users = {
      furcom = {
        imports = [
          ./modules/btop.nix
          ./modules/cliphist.nix
          ./modules/environment.nix
          ./modules/eza.nix
          ./modules/fastfetch/fastfetch.nix
          ./modules/fzf.nix
          ./modules/fusuma.nix
          ./modules/git.nix
          ./modules/gpg.nix
          ./modules/gtk.nix
          ./modules/hypr/hypr.nix
          ./modules/kitty.nix
          ./modules/mako.nix
          ./modules/oh-my-posh.nix
          ./modules/rofi.nix
          ./modules/ssh.nix
          ./modules/waybar.nix
          ./modules/wallust/wallust.nix
          ./modules/yazi.nix
          ./modules/zoxide.nix
          ./modules/zsh.nix
        ];

        home = {
          username = "furcom";
          homeDirectory = "/home/furcom";
          stateVersion = "24.05";
          packages = with pkgs; [
            nwg-look
            waypaper
            discord
            cava
            google-chrome
            qalculate-gtk
            redact
            smile
            spotify
            nautilus
            bitwarden-desktop
          ];
          sessionVariables = {};
          file = {
            ".config/streamdeck-ui" = { source = ./files/streamdeck-ui; recursive = true; };
            ".config/nvim" = { source = ./files/nvim; recursive = true; };
          };
        };

      };
    };
  };
}
