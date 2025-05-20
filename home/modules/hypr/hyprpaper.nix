{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hyprpaper
  ];
  services.hyprpaper = {
    enable = true;
    package = pkgs.hyprpaper;
    settings = {
      preload = [ "~/.cache/hypnix/wallpaper" ];
      splash = false;
      splash_offset = 2.0;
      ipc = "on";
      # Monitor 1
      wallpaper = [ "eDP-1, ~/.cache/hypnix/wallpaper" ];
    };
  };
}
