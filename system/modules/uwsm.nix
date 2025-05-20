{ pkgs, ... }:
{
  programs.uwsm = {
    enable = true;
    package = pkgs.uwsm;
    waylandCompositors = {
      hyprland = {
        prettyName = "Hyprland";
        comment = "Hyprland compositor managed by UWSM";
        binPath = "/run/current-system/sw/bin/Hyprland";
      };
    };
  };
}
