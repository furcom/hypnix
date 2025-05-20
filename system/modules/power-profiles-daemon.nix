{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.power-profiles-daemon ];
  services.power-profiles-daemon.enable = true;
}
