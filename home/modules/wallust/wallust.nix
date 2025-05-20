{ pkgs, ... }:
{
  programs.wallust  = {
    enable  = true;
    package  = pkgs.wallust;
    settings = {
      backend = "wal";
      color_space = "lch";
      palette = "dark";
      saturation = 15;
      alpha = 100;
      check_contrast = true;
      templates = {
        cava = { template = "cava"; target = "~/.config/cava/config"; new_engine = true; };
        hyprland = { template = "hyprland"; target = "~/.config/hypr/hypr_colors.conf"; new_engine = true; };
        hyprlock = { template = "hyprlock"; target = "~/.config/hypr/hyprlock.conf"; new_engine = true; };
        hyprpanel = { template = "hyprpanel"; target = "~/.config/hyprpanel/config.json"; new_engine = true; };
        kitty = { template = "kitty"; target = "~/.config/kitty/style.conf"; new_engine = true; };
        mako = { template = "mako"; target = "~/.config/mako/config"; new_engine = true; };
        oh-my-posh = { template = "oh-my-posh"; target = "~/.config/oh-my-posh/config.yaml"; new_engine = true; };
        rofi = { template = "rofi"; target = "~/.config/rofi/config.rasi"; new_engine = true; };
        waybar = { template = "waybar"; target = "~/.config/waybar/colors.css"; new_engine = true; };
        waypaper = { template = "waypaper"; target = "~/.config/waypaper/config.ini"; new_engine = true; };
      };
    };
  };

  home.file.".config/wallust/templates" = { source = ./templates; recursive = true; };
}
