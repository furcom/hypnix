{ pkgs, ... }:
{
  services = {
    pipewire = {
      audio.enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
      enable = true;
      jack.enable = true;
      pulse.enable = false;
      systemWide = false; # systemWide enabled not recommended
      wireplumber.enable = true;
    };
    pulseaudio.enable = false;
  };

  environment.systemPackages = with pkgs; [
    playerctl
    pipewire
  ];
}
