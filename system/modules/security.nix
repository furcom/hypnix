{ pkgs, ... }:
{
  security = {
    polkit = {
      enable = true;
      debug = false;
      package = pkgs.polkit;
      adminIdentities = [
        "unix-group:wheel"
        "unix-group:furcom"
      ];
    };

    rtkit.enable = true;

    sudo = {
      enable = true;
      package = pkgs.sudo;
      extraRules = [
        {
          users = [ "furcom" ];
          groups = [ "furcom" ];
          commands = [
            { command = "/run/current-system/sw/bin/wg show"; options = [ "NOPASSWD" ]; }
            { command = "/home/furcom/.config/hypnix/home/scripts/wireguard"; options = [ "NOPASSWD" ]; }

            { command = "/run/current-system/sw/bin/systemctl start wg-quick-wg0.service"; options = [ "NOPASSWD" ]; }
            { command = "/run/current-system/sw/bin/systemctl stop wg-quick-wg0.service"; options = [ "NOPASSWD" ]; }
          ];
          runAs = "ALL:ALL";
        }
      ];
      keepTerminfo = true;
      execWheelOnly = false;
      wheelNeedsPassword = true;
    };
  };
}
