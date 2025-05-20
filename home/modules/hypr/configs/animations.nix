{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      animations = {

        bezier = [
          "linear, 0.0, 0.0, 1.0, 1.0"
          "bounce, 0.05, 0.9, 0.1, 1.1"
          "easeOutQuint, 0.23, 1, 0.32, 1"
        ];
        animation = [
          "windows, 1, 7, bounce"
          "windowsIn, 1, 5, bounce, gnomed"
          "windowsOut, 1, 7, bounce, slide bottom"
          "windowsMove, 1, 5, bounce, gnomed"
      
          "layers, 1, 7, bounce"
          "layersIn, 1, 5, bounce, popin 85%"
          "layersOut, 1, 7, bounce, popin 85%"
      
          "fade, 1, 2, easeOutQuint"
          "fadeDim, 1, 2, easeOutQuint"
          "fadeShadow, 1, 2, easeOutQuint"
          "fadeSwitch, 1, 2, easeOutQuint"
      
          "workspaces, 1, 5, bounce"
          "workspacesIn, 1, 5, bounce, slide"
          "workspacesOut, 1, 5, bounce, slide"

          "specialWorkspaceIn, 1, 5, bounce, slidefadevert"
          "specialWorkspaceOut, 1, 5, bounce, slidefadevert"
        ];

      };
    };
  };
}
