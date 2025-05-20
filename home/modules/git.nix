{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    package = pkgs.git;
    userName = "furcom";
    userEmail = "mail@furcom.dev";
  };
}
