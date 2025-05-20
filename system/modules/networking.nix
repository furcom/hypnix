{ pkgs, ... }:
{
  services = {
    avahi = { # Needed for Chromecast
      enable = true;
      package = pkgs.avahi;
    };
  };

  networking = {

    firewall = {
      allowPing = true;
      allowedUDPPorts = [
        51820 # Wireguard
        5353  # Needed for Chromecast
        2049 # NFS
        111 # NFS Portmapper
      ]; 
      allowedUDPPortRanges = [
        { from = 32768; to = 61000; } # Needed for Chromecast
      ];
      allowedTCPPorts = [
        8010 # Needed for Chromecast
        2049 # NFS
        111 # NFS Portmapper
      ];
      enable = true;
      extraPackages = with pkgs; [
        ipset
        iproute2
      ];
      pingLimit = "--limit 1/minute --limit-burst 5";
    };

    hostName = "hypnix";

    networkmanager = {
      enable = true;
      logLevel = "ERR";
      dhcp = "internal";
      wifi = {
        backend = "iwd";
        powersave = false;
      };
    };

    wireless = {
      iwd = {
        enable = true;
        settings = {
          IPv6.Enabled = false;
        };
        package = pkgs.iwd;
      };
    };

    wg-quick = {
      interfaces = {
        wg0 = {
          autostart = true;
          privateKeyFile = "/home/furcom/.secrets/wg0_priv_key";
          address = [ "10.20.30.5/32" ];
          dns = [
            "10.0.1.254"
          ];
          peers = [
            {
              publicKey = "kJP+9lWwLjWjY/yEsYunrVfGZnL3i5c3r9E4A/PTLBQ=";
              allowedIPs = [
                "0.0.0.0/0"
                "::/0"
              ];
              endpoint = "wg.furcom.dev:51820";
              persistentKeepalive = 30;
            }
          ];
        };
      };
    };

  };

  system.activationScripts = {
    rfkillUnblockWlan = {
      text = ''
        rfkill unblock wlan
      '';
      deps = [];
    };
  };

  environment.systemPackages = with pkgs; [
    curl
    dnsmasq
    dnsutils
    cifs-utils
    inetutils
    iputils
    nmap
    netcat-gnu
    samba
    tcpdump
    wget
    whois
    wireguard-tools
  ];
}
