{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.libinput ];
  services = { libinput.enable = true; };
}
