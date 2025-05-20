{ pkgs, ... }:
{
  services = {
    dbus = {
      enable = true;
      dbusPackage = pkgs.dbus;
      brokerPackage = pkgs.dbus-broker;
      implementation = "broker";
      apparmor = "disabled";
    };
  };
  boot.initrd.systemd.dbus.enable = true;
}
