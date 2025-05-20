{ ... }:
{
  users = {

    groups = {
      libvirtd.members = [ "furcom" ];
    };

    users = {
      furcom = {
        description = "furcom";
        extraGroups = [
          "libvirtd"
          "networkmanager"
          "qemu-libvirtd"
          "wheel"
        ];
        isNormalUser = true;
        isSystemUser = false;
        packages = [];
      };
    };

  };
}
