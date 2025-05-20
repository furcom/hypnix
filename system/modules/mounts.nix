{ lib, pkgs, ... }:
{
  boot.supportedFilesystems = [ "nfs" ];
  services.rpcbind.enable = true; # needed for NFS

  systemd.mounts = let commonMountOptions = {
    type = "nfs";
    mountConfig = {
      Options = [ "noatime" "nfsvers=4.2" ];
    };
  };

  in

  [
    (commonMountOptions // {
      what = "10.0.1.20:/mnt/tank/nextcloud/Furkan";
      where = "/mnt/nextcloud/Furkan";
    })

    #(commonMountOptions // {
    #  what = "10.0.1.20:/mnt/tank/nextcloud/Furkan";
    #  where = "/mnt/nextcloud/Furkan";
    #})
  ];

  systemd.automounts = let commonAutoMountOptions = {
    wantedBy = [ "multi-user.target" ];
    automountConfig = {
      TimeoutIdleSec = "600"; # Dismount after X seconds.
    };
  };

  in

  [
    (commonAutoMountOptions // { where = "/mnt/nextcloud/Furkan"; })
    #(commonAutoMountOptions // { where = "/mnt/nextcloud/Furkan"; })
  ];
}
