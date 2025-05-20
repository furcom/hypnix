{pkgs,...}:
{
  programs = {
    xwayland = {
      enable = true;
      package = pkgs.xwayland;
    };
  };
}
