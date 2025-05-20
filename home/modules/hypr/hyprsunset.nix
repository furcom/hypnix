{ pkgs, ... }:
{
  services.hyprsunset = {
    enable = true;
    package = pkgs.hyprsunset;
    extraArgs = [ "--identity" ];
    transitions = {
      sunrise = {
        calendar = "*-*-* 06:00:00";
        requests = [
          [ "temperature" "6500" ]
          [ "gamma 100" ]
        ];
      };
      sunset = {
        calendar = "*-*-* 00:00:00";
        requests = [
          [ "temperature" "3500" ]
        ];
      };
    };
  };
}
