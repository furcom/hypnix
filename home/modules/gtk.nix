{ pkgs, ... }:
{
  home.packages = with pkgs; [
    glib
    gtkmm4
    gtk3
    gtk4
    gtk4-layer-shell
    libadwaita
    nemo-with-extensions
  ];
  gtk = {
    enable = true;
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 32;
    };
    font = {
      name = "0xProto Nerd Font Mono";
      package = pkgs.nerd-fonts._0xproto;
      size = 11;
    };
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    iconTheme = {
      name = "Material-Black-Plum-Numix-FLAT";
      package = pkgs.material-black-colors;
    };
  };
}
