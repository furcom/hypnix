{ ... }:
{
  services = {
    logind = {
      lidSwitch = "suspend-then-hibernate";
      #lidSwitch = "hibernate";
      powerKey = "lock";
      powerKeyLongPress = "poweroff";
      extraConfig = "
        # Disable power button shutdown
        HandlePowerKey=lock
      ";
    };
  };
}
