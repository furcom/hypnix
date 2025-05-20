{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;
    font = {
      package = pkgs.nerd-fonts._0xproto;
      name = "0xProto Nerd Font Mono"; 
      size = 12;
    };
    shellIntegration = {
      enableBashIntegration = true;
      enableFishIntegration = false;
      enableZshIntegration = true;
      mode = "no-cwd";
    };
    settings = {
      include = "./style.conf";
      
      # Advanced
      shell = "zsh";
      term = "kitty";
      close_on_child_death = false;
      kitten = "@ --help";
      allow_remote_control = false;
      isten_on = "none";
      update_check_interval = 6;
      startup_session = "none";
      clipboard_control = "write-clipboard write-primary read-clipboard-ask read-primary-ask";
      clipboard_max_size = 999999;
      allow_hyperlinks = "true";
      allow_cloning = "ask";
      clone_source_strategies = "venv,conda,env_var,path";
      wayland_titlebar_color = "system";
      linux_display_server = "auto";
      
      # Performance tuning
      repaint_delay = 1;
      input_delay = 1;
      sync_to_monitor = true;
      
      # Scrollback
      scrollback_lines = 2000;
      scrollback_indicator_opacity = "1.0";
      scrollback_pager = "less --chop-long-lines --RAW-CONTROL-CHARS +INPUT_LINE_NUMBER";
      scrollback_pager_history_size = 0;
      scrollback_fill_enlarged_window = false;
      wheel_scroll_multiplier = "1.0";
      wheel_scroll_min_lines = 1;
      touch_scroll_multiplier = "1.0";
      
      # Mouse
      mouse_hide_wait = "0.33";
      url_style = "curly";
      open_url_with = "default";
      url_prefixes = "ftp ftps git http https kitty mailto sftp ssh";
      detect_urls = true;
      show_hyperlink_targets = false;
      underline_hyperlinks = "hover";
      copy_on_select = "clipboard";
      clear_selection_on_clipboard_loss = true;
      strip_trailing_spaces = "smart";
      select_by_word_characters = "@-./_~?&=%+#";
      click_interval = "-1.0";
      focus_follows_mouse = false;
      pointer_shape_when_grabbed = "arrow";
      default_pointer_shape = "beam";
      pointer_shape_when_dragging = "beam";
      
      # Terminal Bell
      enable_audio_bell = true;
      visual_bell_duration = "0.33";
      window_alert_on_bell = true;
      bell_on_tab = "🔔 ";
      command_on_bell = "none";
      bell_path = "none";
      
      # Windows Layout
      remember_window_size = false;
      initial_window_width = 960;
      initial_window_height = 600;
      enabled_layouts = "*";
      window_resize_step_cells = 1;
      window_resize_step_lines = 1;
      window_border_width = "2.0pt";
      draw_minimal_borders = true;
      window_margin_width = 2;
      single_window_margin_width = "-1";
      window_padding_width = "4";
      single_window_padding_width = "-1";
      placement_strategy = "center";
      inactive_text_alpha = "1";
      hide_window_decorations = false;
      #window_logo_path = "./kitty_logo.png";
      window_logo_position = "bottom-right";
      window_logo_alpha = "0.10";
      resize_debounce_time = "0.1 0.1";
      resize_in_steps = false;
      confirm_os_window_close = "-1";
      
      # Tab Bar
      tab_bar_edge = "top";
      tab_bar_margin_width = 0;
      tab_bar_margin_height = "10 0";
      tab_bar_style = "fade";
      tab_fade = "0.66 0.77 0.88 0.99";
      #tab_bar_style = "separator";
      #tab_separator = "'|'";
      #tab_bar_style = "powerline";
      #tab_powerline_style = "slanted";
      tab_bar_align = "center";
      tab_bar_min_tabs = 2;
      tab_switch_strategy = "previous";
      tab_activity_symbol = "";
      tab_title_max_length = 0;
      tab_title_template = "'{fmt.fg.green}{bell_symbol} {activity_symbol} {fmt.fg.tab}({index}) {title} '";
      active_tab_font_style = "bold";
      inactive_tab_font_style = "normal";
      #tab_bar_background = "none";
      #tab_bar_margin_color = "none";

      # Get latest symbol map from here: https://sw.kovidgoyal.net/kitty/faq/#kitty-is-not-able-to-use-my-favorite-font
      symbol_map = "U+e000-U+e00a,U+ea60-U+ebeb,U+e0a0-U+e0c8,U+e0ca,U+e0cc-U+e0d7,U+e200-U+e2a9,U+e300-U+e3e3,U+e5fa-U+e6b1,U+e700-U+e7c5,U+ed00-U+efc1,U+f000-U+f2ff,U+f000-U+f2e0,U+f300-U+f372,U+f400-U+f533,U+f0001-U+f1af0 Symbols Nerd Font Mono";

      background_opacity = "1.0";
      background_blur = 16;
      # Blur currently only working on macOS and KDE only!
      background_image = "none";
      background_image_linear = false;
      dynamic_background_opacity = false;
      background_tint = "0.0";
      background_tint_gaps = "1.0";
      dim_opacity = 1;
      
      # Cursor #
      #cursor_shape = "block";
      cursor_shape = "beam";
      cursor_beam_thickness = 3;
      #cursor_shape = "underline";
      #cursor_underline_thickness = "3.0";
      cursor_blink_interval = "-1";
      cursor_stop_blinking_after = 0;
      
      # Fonts #
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";
      force_ltr = false;
      disable_ligatures = "never";
      box_drawing_scale = "0.001, 1, 1.5, 2";
      undercurl_style = "thin-sparse";
      text_composition_strategy = "platform";
      text_fg_override_threshold = 0;

      clear_all_mouse_actions = false;
      clear_all_shortcuts = false;
      kitty_mod = "ctrl+shift";
    };

    extraConfig = "
      mouse_map right click ungrabbed  paste_from_buffer clipboard
      mouse_map left click ungrabbed  mouse_handle_click selection link prompt
      mouse_map shift+left click grabbed,ungrabbed  mouse_handle_click selection link prompt
      mouse_map ctrl+shift+left release grabbed,ungrabbed  mouse_handle_click link
      mouse_map ctrl+shift+left press grabbed  discard_event
      mouse_map middle release ungrabbed  paste_from_selection
      mouse_map left press ungrabbed  mouse_selection normal
      mouse_map ctrl+alt+left press ungrabbed  mouse_selection rectangle
      mouse_map left doublepress ungrabbed  mouse_selection word
      mouse_map left triplepress ungrabbed  mouse_selection line
      mouse_map ctrl+alt+left triplepress ungrabbed  mouse_selection line_from_point
      mouse_map right press ungrabbed  mouse_selection extend
      mouse_map shift+middle release ungrabbed,grabbed  paste_selection
      mouse_map shift+middle press grabbed  discard_event
      mouse_map shift+left press ungrabbed,grabbed  mouse_selection normal
      mouse_map ctrl+shift+alt+left press ungrabbed,grabbed  mouse_selection rectangle
      mouse_map shift+left doublepress ungrabbed,grabbed  mouse_selection word
      mouse_map shift+left triplepress ungrabbed,grabbed  mouse_selection line
      mouse_map ctrl+shift+alt+left triplepress ungrabbed,grabbed  mouse_selection line_from_point
      mouse_map shift+right press ungrabbed,grabbed  mouse_selection extend
      mouse_map ctrl+shift+right press ungrabbed  mouse_show_command_output
      
      modify_font underline_position -2
      modify_font underline_thickness 150%
      modify_font strikethrough_position 2px
      modify_font cell_width 100%
      modify_font cell_height -2px
      modify_font baseline 3
    ";

    keybindings = {
      # Clipboard
      "kitty_mod+c" = "copy_to_clipboard";
      "kitty_mod+v" = "paste_from_clipboard";
      #"kitty_mod+o" = "pass_selection_to_program firefox";
    
      # Scrolling
      "kitty_mod+up" = "scroll_line_up";
      "kitty_mod+down" = "scroll_line_down";
      "kitty_mod+page_up" = "scroll_page_up";
      "kitty_mod+page_down" = "scroll_page_down";
      "kitty_mod+home" = "scroll_home";
      "kitty_mod+end" = "scroll_end";
    
      # Window management
      "kitty_mod+enter" = "launch --location=neighbor";
      "kitty_mod+n" = "new_os_window";
      "kitty_mod+x" = "close_window";
    
      "ctrl+right" = "next_window";
      "ctrl+left" = "previous_window";
      "ctrl+down" = "next_window";
      "ctrl+up" = "previous_window";
    
      "ctrl+space" = "new_tab";
      "kitty_mod+right" = "next_tab";
      "kitty_mod+left" = "previous_tab";
      "kitty_mod+." = "move_tab_forward";
      "kitty_mod+," = "move_tab_backward";
    
      "ctrl+alt+enter" = "start_resizing_window";
      "ctrl+alt+space" = "set_tab_title";
      "kitty_mod+l" = "next_layout";
      "kitty_mod+p" = "goto_layout tall";
    
      "ctrl+plus" = "change_font_size all +1.0";
      "ctrl+minus" = "change_font_size all -1.0";
      "ctrl+#" = "change_font_size all 12.0";
    
      "ctrl+shift+1" = "first_window";
      "ctrl+shift+2" = "second_window";
      "ctrl+shift+3" = "third_window";
      "ctrl+shift+4" = "fourth_window";
      "ctrl+shift+5" = "fifth_window";
      "ctrl+shift+6" = "sixth_window";
      "ctrl+shift+7" = "seventh_window";
      "ctrl+shift+8" = "eighth_window";
      "ctrl+shift+9" = "ninth_window";
      "ctrl+shift+0" = "tenth_window";
    
      "ctrl+1" = "goto_tab 1";
      "ctrl+2" = "goto_tab 2";
      "ctrl+3" = "goto_tab 3";
      "ctrl+4" = "goto_tab 4";
      "ctrl+5" = "goto_tab 5";
      "ctrl+6" = "goto_tab 6";
      "ctrl+7" = "goto_tab 7";
      "ctrl+8" = "goto_tab 8";
      "ctrl+9" = "goto_tab 9";
      "ctrl+0" = "goto_tab 10";
    };

  };
}
