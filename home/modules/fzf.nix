{ pkgs, ... }:
{
  programs.fzf = {
    enable = true;
    changeDirWidgetCommand = "fd --type d";
    changeDirWidgetOptions = [
      "--preview 'tree -C {} | head -200'"
    ];
    colors = {
      bg = "#1e1e1e";
      "bg+" = "#1e1e1e";
      fg = "#d4d4d4";
      "fg+" = "#d4d4d4";
    };
    defaultCommand = "fd --type f";
    defaultOptions = [
      "--height 40%"
      "--border"
    ];
    enableBashIntegration = false;
    enableFishIntegration = false;
    enableZshIntegration = true;
    fileWidgetCommand = "fd --type f";
    fileWidgetOptions = [
      "--preview 'head {}'"
    ];
    historyWidgetOptions = [
      "--sort"
      "--exact"
    ];
    package = pkgs.fzf;
  };

  home.packages = with pkgs; [
    fd
  ];
}
