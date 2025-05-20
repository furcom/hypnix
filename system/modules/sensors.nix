{ pkgs, ... }:
{
  hardware.sensor.iio.enable = true;
  programs.iio-hyprland = {
    enable = true;
    package = pkgs.iio-hyprland;
  };
}
