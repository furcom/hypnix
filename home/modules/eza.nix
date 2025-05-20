{ pkgs, ... }:
{
  programs.eza = {
    colors = "auto";
    enable = true;
    enableBashIntegration = false;
    enableFishIntegration = false;
    enableIonIntegration = false;
    enableNushellIntegration = false;
    enableZshIntegration = true;
    git = true;
    icons = "always";
    package = pkgs.eza;
    extraOptions = [
      "--all"
      "--header"
      "--long"
      "--group"
      "--time=modified"
      "--group-directories-first"
      "--time-style=+%Y-%m-%d (%H:%M:%S)"
    ];
  };
}
