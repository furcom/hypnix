{ pkgs, ... }:
{
  programs.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    withUWSM = true;
    portalPackage = pkgs.xdg-desktop-portal-hyprland;
    xwayland.enable = true;
  };
}
