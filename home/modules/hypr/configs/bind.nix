{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {

      "$dispatch" = "hyprctl dispatch";

      bindm = [
        # Move/resize windows with mainMod + LMB/RMB and dragging
        "$mainMod, mouse:272, movewindow"
      ];

      bind = [
        # === PROGRAMS === #

        "$mainMod, R, exec, $swoosh_sound"
        "$mainMod, R, exec, rofi -show drun -modi drun -theme-str 'window{width:30%;height:35%;}'"

        "$mainMod, B, exec, exec, $swoosh_sound"
        "$mainMod, B, exec, google-chrome-stable --ozone-platform=wayland"
        "$mainMod SHIFT, B, exec, google-chrome-stable --ozone-platform=wayland --incognito"

        "$mainMod, C, exec, hyprpicker -a"

        "$mainMod, D, exec, $swoosh_sound"
        "$mainMod, D, focuswindow, class:discord"
        "$mainMod, D, exec, discord"

        "$mainMod, F, exec, $swoosh_sound"
        "$mainMod, F, exec, nemo"

        "$mainMod, H, exec, $HOME/.config/hypnix/home/scripts/settings --menu"
        "$mainMod, ESCAPE, exec, $HOME/.config/hypnix/home/scripts/settings --menu"

        "$mainMod, L, exec, exec, $swoosh_sound"
        "$mainMod, L, exec, hyprlock"

        "$mainMod, M, exec, $swoosh_sound"
        "$mainMod, M, focuswindow, class:Spotify"
        "$mainMod, M, exec, spotify"

        "$mainMod, P, exec, $swoosh_sound"
        "$mainMod, P, focuswindow, class:Bitwarden"
        "$mainMod, P, exec, bitwarden"

        "$mainMod, S, exec, $swoosh_sound"
        "$mainMod, S, exec, rofi -show ssh -theme-str 'window{width:20%;height:35%;} configuration{show-icons:false;}'"

        "$mainMod, T, exec, $swoosh_sound"
        "$mainMod, T, exec, $terminal"
        "$mainMod, RETURN, exec, $swoosh_sound"
        "$mainMod, RETURN, exec, $terminal"

        "$mainMod, V, exec, $swoosh_sound"
        "$mainMod, V, exec, cliphist list | rofi -dmenu -theme-str 'window{width:50%;height:35%;} configuration{show-icons:false;}' | cliphist decode | wl-copy"

        "$mainMod, W, exec, $swoosh_sound"
        "$mainMod, W, exec, waypaper"
        "$mainMod SHIFT, W, exec, waypaper --random"

        "$mainMod, DELETE, exec, ~/.config/hypnix/home/scripts/powermenu"

        "$mainMod, Y, exec, $HOME/.config/hypnix/home/scripts/waybar"
        "$mainMod, Y, exec, $swoosh_sound"

        # Execute "sudo virsh net-autostart default" to make default network autostart !
        "$mainMod, F12, exec, virsh --connect qemu:///system start Windows11 && virt-viewer --connect qemu:///system Windows11"

        "$mainMod, PERIOD, exec, $swoosh_sound"
        "$mainMod, PERIOD, exec, smile"

        "$mainMod, PRINT, exec, hyprshot -m output --m eDP-1"
        "$mainMod SHIFT, PRINT, exec, hyprshot -m window"
        "$mainMod CTRL, PRINT, exec, hyprshot -m region"

        # === HARDWARE === #
        
        # Volume ("wpctl status" list devices. "wpctl inspect <id>" inspect specific device)
        "$mainMod, F1, exec, $HOME/.config/hypnix/home/scripts/audio_spk --toggle"
        "$mainMod, F2, exec, $HOME/.config/hypnix/home/scripts/audio_spk --dec"
        "$mainMod, F3, exec, $HOME/.config/hypnix/home/scripts/audio_spk --inc"

        # Microphone
        "$mainMod, F4, exec, $HOME/.config/hypnix/home/scripts/audio_mic --toggle"
        "$mainMod SHIFT, F4, exec, $HOME/.config/hypnix/home/scripts/audio_mic --max"

        # Brightness
        "$mainMod, F5, exec, $HOME/.config/hypnix/home/scripts/brightness --dec"
        "$mainMod, F6, exec, $HOME/.config/hypnix/home/scripts/brightness --inc"

        # Keyboard backlight
        "$mainMod SHIFT, F5, exec, $HOME/.config/hypnix/home/scripts/keyboard --dec"
        "$mainMod SHIFT, F6, exec, $HOME/.config/hypnix/home/scripts/keyboard --inc"
        "$mainMod, space, exec, $HOME/.config/hypnix/home/scripts/keyboard --toggle"

        # === WORKSPACES === #

        # Special Workspace
        "$mainMod, SUPER_L, exec, $swoosh_sound"
        "$mainMod, SUPER_L, togglespecialworkspace"

        "$mainMod, A, exec, $swoosh_sound"
        "$mainMod, A, movetoworkspace, special"

        "$mainMod SHIFT, A, exec, $swoosh_sound"
        "$mainMod SHIFT, A, movetoworkspace, 1"

        # Switch workspaces with mainMod + [0-9]
        "$mainMod, 1, exec, $swoosh_sound"
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, exec, $swoosh_sound"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, exec, $swoosh_sound"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, exec, $swoosh_sound"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, exec, $swoosh_sound"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, exec, $swoosh_sound"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, exec, $swoosh_sound"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, exec, $swoosh_sound"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, exec, $swoosh_sound"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, exec, $swoosh_sound"
        "$mainMod, 0, workspace, 10"
        "$mainMod, page_up, exec, $swoosh_sound"
        "$mainMod, page_up, workspace, -1"
        "$mainMod, page_down, exec, $swoosh_sound"
        "$mainMod, page_down, workspace, +1"

        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, exec, $swoosh_sound"
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, exec, $swoosh_sound"
        "$mainMod, mouse_up, workspace, e-1"

        "$mainMod SHIFT, mouse_down, exec, $swoosh_sound"
        "$mainMod SHIFT, mouse_down, movetoworkspace, +1"
        "$mainMod SHIFT, mouse_up, exec, $swoosh_sound"
        "$mainMod SHIFT, mouse_up, movetoworkspace, -1"

        # === WINDOWS === #
        
        # Overview
        "$mainMod, TAB, exec, hyprctl dispatch scroller:jump"

        # Close
        "ALT, F4, exec, $swoosh_sound"
        "ALT, F4, killactive"
        "$mainMod, Q, exec, $swoosh_sound"
        "$mainMod, Q, killactive"

        # Fullscreen
        "$mainMod, plus, exec, $swoosh_sound"
        "$mainMod, plus, fullscreen, 1"
        "$mainMod SHIFT, plus, exec, $swoosh_sound"
        "$mainMod SHIFT, plus, fullscreen, 0"

        # Floating
        "$mainMod, E, exec, $swoosh_sound"
        "$mainMod, E, togglefloating"
        "$mainMod, E, exec, $swoosh_sound"
        "$mainMod, E, centerwindow"

        "$mainMod, mouse:273, exec, $swoosh_sound"
        "$mainMod, mouse:273, fullscreen, 1"
        "$mainMod, mouse:274, exec, $swoosh_sound"
        "$mainMod, mouse:274, centerwindow, active"

        # Move focus
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # Move Window
        "$mainMod SHIFT, left, exec, $swoosh_sound"
        "$mainMod SHIFT, left, movewindow, l"

        "$mainMod SHIFT, right, exec, $swoosh_sound"
        "$mainMod SHIFT, right, movewindow, r"

        "$mainMod SHIFT, up, exec, $swoosh_sound"
        "$mainMod SHIFT, up, movewindow, u"

        "$mainMod SHIFT, down, exec, $swoosh_sound"
        "$mainMod SHIFT, down, movewindow, d"

        "$mainMod SHIFT, page_up, exec, $swoosh_sound"
        "$mainMod SHIFT, page_up, movetoworkspace, -1"

        "$mainMod SHIFT, page_down, exec, $swoosh_sound"
        "$mainMod SHIFT, page_down, movetoworkspace, +1"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mainMod SHIFT, 1, exec, $swoosh_sound"
        "$mainMod SHIFT, 1, movetoworkspace, 1"

        "$mainMod SHIFT, 2, exec, $swoosh_sound"
        "$mainMod SHIFT, 2, movetoworkspace, 2"

        "$mainMod SHIFT, 3, exec, $swoosh_sound"
        "$mainMod SHIFT, 3, movetoworkspace, 3"

        "$mainMod SHIFT, 4, exec, $swoosh_sound"
        "$mainMod SHIFT, 4, movetoworkspace, 4"

        "$mainMod SHIFT, 5, exec, $swoosh_sound"
        "$mainMod SHIFT, 5, movetoworkspace, 5"

        "$mainMod SHIFT, 6, exec, $swoosh_sound"
        "$mainMod SHIFT, 6, movetoworkspace, 6"

        "$mainMod SHIFT, 7, exec, $swoosh_sound"
        "$mainMod SHIFT, 7, movetoworkspace, 7"

        "$mainMod SHIFT, 8, exec, $swoosh_sound"
        "$mainMod SHIFT, 8, movetoworkspace, 8"

        "$mainMod SHIFT, 9, exec, $swoosh_sound"
        "$mainMod SHIFT, 9, movetoworkspace, 9"

        "$mainMod SHIFT, 0, exec, $swoosh_sound"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

      ];
      
    };
  };
}
