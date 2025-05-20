{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      general = {
        allow_tearing = false;
        border_size = 3;
        "col.active_border" = "$color4";
        "col.inactive_border" = "$background";
        "col.nogroup_border" = "$color3";
        "col.nogroup_border_active" = "$color3";
        extend_border_grab_area = 4;
        gaps_in = 8;
        gaps_out = 16;
        gaps_workspaces = 0;
        hover_icon_on_border = true;
        layout = "dwindle";
        no_border_on_floating = false;
        no_focus_fallback = false;
        resize_on_border = true;
        resize_corner = 0;
        snap = {
          enabled = true;
          window_gap = 8;
          monitor_gap = 8;
          border_overlap = false;
        };
      };
    };
  };
}
