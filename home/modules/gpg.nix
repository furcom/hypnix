{ pkgs, ... }:
{
  services = {
    gpg-agent = {
      defaultCacheTtl = 3600;
      defaultCacheTtlSsh = 7200;
      enable = true;
      enableBashIntegration = false;
      enableExtraSocket = true;
      enableFishIntegration = false;
      enableNushellIntegration = false;
      enableScDaemon = true;
      enableSshSupport = true;
      enableZshIntegration = true;
      #extraConfig = ''
      #  pinentry-program ${pkgs.pinentry-all}/bin/pinentry
      #'';
      maxCacheTtl = 3600;
      maxCacheTtlSsh = 7200;
    };
  };
  programs.gpg = {
    enable = true;
    package = pkgs.gnupg;
  };
}
