{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      misc = {
        always_follow_on_dnd = true;
        animate_manual_resizes = true;
        animate_mouse_windowdragging = true;
        "col.splash" = "$color4";
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        font_family = "Sans";
        force_default_wallpaper = 0;
        key_press_enables_dpms = false;
        layers_hog_keyboard_focus = true;
        mouse_move_enables_dpms = false;
        splash_font_family = "Sans";
        vfr = true;
        vrr = 0;
      };
    };
  };
}
