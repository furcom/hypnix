{ pkgs, ... }:
{
  services = {
    gvfs.enable = true;
    udisks2.enable = true;
  };

  environment.systemPackages = with pkgs; [
    udisks2
    udisks
    usbutils
    udiskie
  ];
}
