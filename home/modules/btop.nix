{ pkgs, ... }:
{
  programs.btop = {
    enable = true;
    package = pkgs.btop;
    settings = {
      color_theme = "Default";
      theme_background = false;
    };
  };
}
