{ pkgs, ... }:
{
  programs.yazi = {
    enableBashIntegration = false;
    enableFishIntegration = false;
    enableNushellIntegration = false;
    enableZshIntegration = true;
    enable = true;
    #keymap = {
    #  input.prepend_keymap = [
    #    { run = "close"; on = [ "" ]; }
    #    { run = "close --submit"; on = [ "" ]; }
    #    { run = "escape"; on = [ "" ]; }
    #    { run = "backspace"; on = [ "" ]; }
    #  ];
    #  manager.prepend_keymap = [
    #    { run = "escape"; on = [ "" ]; }
    #    { run = "quit"; on = [ "q" ]; }
    #    { run = "close"; on = [ "" ]; }
    #  ];
    #};
    package = pkgs.yazi;
    plugins = {};
    settings = {
      log = {
        enabled = false;
      };
      manager = {
        show_hidden = false;
        sort_by = "mtime";
        sort_dir_first = true;
        sort_reverse = true;
      };
    };
    shellWrapperName = "y"; # Word to execute yazi
  };
}
