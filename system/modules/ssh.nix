{ pkgs, ... }:
{
  programs.ssh = {
    package = pkgs.openssh;
    startAgent = true;
    forwardX11 = false;
    agentTimeout = "1h";
  };
}
