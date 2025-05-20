{ pkgs, ... }:
{
  programs.rofi  = {
    enable  = true;
    package  = pkgs.rofi-wayland;
    configPath = "/home/furcom/.config/rofi/config-hm.rasi"; #Absolute path!
  };
}
