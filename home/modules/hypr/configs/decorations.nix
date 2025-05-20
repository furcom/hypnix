{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {

      decoration = {
        active_opacity = 0.975;
        dim_inactive = true;
        dim_strength = 0.5;
        dim_special = 0.75;
        dim_around = 0.25;
        fullscreen_opacity = 1;
        inactive_opacity = 0.95;
        rounding = 16;
        rounding_power = 2.0;
        screen_shader = "";
        blur = {
          enabled = true;
          size = 4;
          passes = 2;
          vibrancy = 0.175;
          vibrancy_darkness = 0.0;
          ignore_opacity = false;
          new_optimizations = true;
          xray = false;
          noise = 0.0125;
          contrast = 0.8925;
          brightness = 0.8175;
          special = false;
          popups = false;
          popups_ignorealpha = 0.25;
        };
        shadow = {
      	  enabled = true;
          color = "rgba(0,0,0,0.33)";
          color_inactive = "rgba(0,0,0,0.33)";
          ignore_window = true;
          offset = "2, 2";
          range = 10;
          render_power = 2;
          scale = 1.0;
      	  sharp = false;
        };
      };

    };
  };
}
