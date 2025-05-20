{ ... }:
{
  home.sessionVariables = {
    GTK_DEBUG="interactive waybar";
    BROWSER = "google-chrome-stable";
    CLUTTER_BACKEND = "wayland";
    EDITOR = "nvim";
    ELECTRON_OZONE_PLATFORM_HINT = "wayland";
    HOME = "/home/furcom";
    GITHUB_TOKEN = "$(< ~/.secrets/git_pat_nixos_updates)";
    GTK_CSD = "0";
    GTK_THEME="adw-gtk3-dark";
    GTK_USE_PORTAL = "1";
    MOZ_ENABLE_WAYLAND = "1";
    NIXPKGS_ALLOW_BROKEN = "1";
    NIXOS_OZONE_WL = "1";
    NIXOS_XDG_OPEN_USE_PORTAL = "1";
    QT_QPA_PLATFORMTHEME = "gtk3";
    QT_SCALE_FACTOR = "1";
    QT_QPA_PLATFORM = "wayland-egl";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    SDL_VIDEODRIVER = "wayland";
    TERMINAL = "kitty";
    WLR_DRM_DEVICES = "/dev/dri/card1";
    WLR_NO_HARDWARE_CURSORS = "1";
    WLR_RENDERER = "gles2";
    XCURSOR_SIZE = "32";
    #XDG_BIN_HOME = "\${HOME}/.local/bin";
    #XDG_CACHE_HOME = "\${HOME}/.cache";
    #XDG_CONFIG_HOME = "\${HOME}/.config";
    #XDG_CURRENT_DESKTOP = "Hyprland";
    #XDG_DATA_HOME = "\${HOME}/.local/share";
    #XDG_SESSION_DESKTOP = "Hyprland";
    #XDG_SESSION_TYPE = "wayland";
  };
}
