{ pkgs, ... }:
{
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
      package = pkgs.neovim-unwrapped;
    };

    vim = {
      enable = true;
      package = pkgs.vim;
      defaultEditor = false;
    };

  };
}
