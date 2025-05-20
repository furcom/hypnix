{ pkgs, ... }:
{
  services = {
    ssh-agent.enable = true;
  };
  programs.ssh = {
    enable = true;
    package = pkgs.openssh;
    extraOptionOverrides = {};
    addKeysToAgent = "yes";
    forwardAgent = true;
    compression = false;
    serverAliveInterval = 0;
    hashKnownHosts = false;
    userKnownHostsFile = "~/.ssh/known_hosts";
    controlMaster = "no";
    controlPath = "~/.ssh/master-%r@%n:%p";
    controlPersist = "no";
    serverAliveCountMax = 3;
    includes = [];
    matchBlocks = {

    # HomeLab
      ansible = { user = "root"; hostname = "10.0.1.30"; port = 22; identityFile = "~/.ssh/id_ed25519"; };
      checkmk = { user = "root"; hostname = "10.0.1.60"; port = 22; identityFile = "~/.ssh/id_ed25519"; };
      docker = { user = "root"; hostname = "10.0.1.50"; port = 22; identityFile = "~/.ssh/id_ed25519"; };
      homeassistant = { user = "root"; hostname = "10.0.1.40"; port = 22; identityFile = "~/.ssh/id_ed25519"; };
      truenas = { user = "truenas_admin"; hostname = "10.0.1.20"; port = 22; identityFile = "~/.ssh/id_ed25519"; };
      NixOS = { user = "root"; hostname = "10.0.1.222"; port = 22; identityFile = "~/.ssh/id_ed25519"; };
      opnsense = { user = "furcom"; hostname = "10.0.1.254"; port = 22; identityFile = "~/.ssh/id_ed25519"; };
      pbs = { user = "root"; hostname = "10.0.1.15"; port = 22; identityFile = "~/.ssh/id_ed25519"; };
      pihole = { user = "root"; hostname = "10.0.1.30"; port = 22; identityFile = "~/.ssh/id_ed25519"; };
      pve = { user = "root"; hostname = "10.0.1.10"; port = 22; identityFile = "~/.ssh/id_ed25519"; };
      website = { user = "root"; hostname = "10.0.1.90"; port = 22; identityFile = "~/.ssh/id_ed25519"; };

    # Extern
      mail = { user = "root"; hostname = "mail.furcom.dev"; port = 22; addressFamily = "inet"; identityFile = "~/.ssh/id_ed25519"; };
      u342031 = { user = "u342031"; hostname = "u342031.your-storagebox.de"; port = 23; addressFamily = "inet"; identityFile = "~/.ssh/id_ed25519"; };
    };
  };
}
