{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hypridle
  ];
  services.hypridle = {
    enable = true;
    package = pkgs.hypridle;
    importantPrefixes = [
      "$"
    ];
    settings = {
      general = {
        ignore_dbus_inhibit = false;
        ignore_systemd_inhibit = false;
        lock_cmd = "hyprlock";
        unlock_cmd = ''notify-send "Welcome back, $USER! 😊"'';
        after_sleep_cmd = ''notify-send "Welcome back, $USER! 😊"''; 
        before_sleep_cmd = ''notify-send "Locked at $(date '+%H:%M:%S, %d.%m.%Y')" && hyprlock'';
      };
    };
  };
}
