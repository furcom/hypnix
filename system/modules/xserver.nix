{ pkgs, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb = {
        options = "grp:alt_shift_toggle, caps:swapescape";
        layout = "de";
        model = "pc104";
      };
      xautolock = {
        enable = false;
      };
      displayManager = {
        gdm.enable = false;
      };
      desktopManager.gnome.enable = false;
    };
  };
}
