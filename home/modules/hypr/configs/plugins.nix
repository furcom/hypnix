{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      plugin = {

        hyprbars = {
          bar_height = 32;
          bar_color = "rgba(00000099)";
          "col.text" = "rgb(ffffff)";
          bar_title_enabled = true;
          bar_text_size = 12;
          bar_text_font = "0xProto Nerd Font Mono";
          bar_text_align = "center";
          bar_buttons_alignment = "right";
          bar_part_of_window = false;
          bar_precedence_over_border = false;
          bar_padding = 16;
          bar_button_padding = 16;
          # hyprbars-button = color, size, icon, on-click
          hyprbars-button = [
            "rgb(ff0000), 16, 󰖭, hyprctl dispatch killactive"
            "$background, 16, , hyprctl dispatch fullscreen 1"
            "$background, 20, 󰜴, hyprctl dispatch movetoworkspace +1"
            "$background, 20, 󰜱, hyprctl dispatch movetoworkspace -1"
          ];
        };

        dynamic-cursors = {
          enabled = true;
          mode = "tilt";
          threshold = 1;
          rotate = {
            length = 20;
            offset = 0.0;
          };
          tilt = {
            limit = 3000;
            function = "quadratic";
          };
          stretch = {
            function = "quadratic";
            limit = 3000;
          };
          shake = {
            base = 1.0;
            enabled = true;
            effects = true;
            influence = 0.0;
            ipc = false;
            limit = 5.0;
            nearest = false;
            speed = 20.0;
            threshold = 4.0;
            timeout = 250;
          };
          hyprcursor = {
            enabled = true;
            fallback = "clientside";
            nearest = false;
            resolution = -1;
          };
        };

      };
    };
  };
}
