{ pkgs, ... }:
{
  home = {
    pointerCursor = {
      enable = true;
      hyprcursor = { enable = true; size = 32; };
      gtk.enable = true;
      x11.enable = true;
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 32;
    };
    packages = with pkgs; [ hyprcursor ];
  };
}
