{ pkgs, ... }:
{
  programs.regreet.enable = false;

  services = {
    greetd = {
      enable = true;
      package = pkgs.greetd.greetd;
      vt = 1;
      settings = {
        default_session = { command = "uwsm start hyprland-uwsm.desktop"; user = "furcom"; };
        initial_session = { command = "uwsm start hyprland-uwsm.desktop"; user = "furcom"; };
      };
    };
  };

}
