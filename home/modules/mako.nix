{ pkgs, ... }:
{
  services.mako = {
    enable = true;
    package = pkgs.mako;
  };
}
