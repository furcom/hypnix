{ pkgs, ... }:
{
  programs.zoxide = {
    enableBashIntegration = false;
    enableFishIntegration = false;
    enableNushellIntegration = false;
    enableZshIntegration = true;
    enable = true;
    package = pkgs.zoxide;
    options = [
      "--no-cmd"
    ];
  };
}
