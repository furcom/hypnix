{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      windowrulev2 = [
        "bordercolor $foreground, fullscreen:1"
        "bordersize 3, fullscreen:1"
        "opacity 0.95, floating:1"

        "float, class:(it.mijorus.smile)"
        "size 20% 26%, class:(it.mijorus.smile)"
        "center, class:(it.mijorus.smile)"
        "animation slide bottom, class:(it.mijorus.smile)"

        "float, class:(waypaper)"
        "center, class:(waypaper)"
        "size 45% 65%, class:(waypaper)"
        "animation slide bottom, class:(waypaper)"

        "animation slide bottom, class:(discord)"
        "workspace special, class:(discord)"

        "fullscreen, class:(virt-viewer)"

        "animation slide bottom, class:(Bitwarden)"
        "workspace special, class:(Bitwarden)"

        "animation slide bottom, class:(Spotify)"
        "workspace special, class:(Spotify)"

      ];
      # Check layers with "hyprctl layers"
      layerrule = [
        "animation slide top, bar-0"
        "animation slide top, waybar"
        "animation fade, hyprpaper"
        "animation fade, logout_dialog"
        "animation slide right, audiomenu"
        "animation slide right, bluetoothmenu"
        "animation slide left, calendarmenu"
        "animation slide left, dashboardmenu"
        "animation slide right, energymenu"
        "animation slide right, indicator"
        "animation slide left, mediamenu"
        "animation slide right, networkmenu"
        "animation slide right, notificationsmenu"
        "noanim, notifications"
        "animation slide bottom, notifications-window"
        "animation slide right, powerdropdownmenu"
        "animation slide bottom, rofi"
        "animation fade, verification"
      ];
    };
  };
}
