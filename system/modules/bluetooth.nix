{ pkgs, ... }:
{
  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = false;
    };
  };
  environment.systemPackages = with pkgs; [
    bluetui
    bluez
    bluez-tools
  ];
}
