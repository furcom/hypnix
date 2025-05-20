{ pkgs, ... }:

# Execute "sudo virsh net-autostart default" to make "default" network autostart for VMs!

{
  boot = {
    kernelModules = [
      "kvm-intel"
      "vfio"
      "vfio_iommu_type1"
    ];
    kernelParams = [
      "intel_iommu=on"
      "intel_iommu=pt"
      "kvm.ignore_msrs=1"
    ];
  };

  environment.systemPackages = with pkgs; [
    looking-glass-client # GPU-Sharing between Host & VM
    virt-viewer
  ];

  programs = {
    virt-manager = {
      enable = true;
      package = pkgs.virt-manager;
    };
  };

  virtualisation = {
    libvirtd = {
      allowedBridges = [ "virbr0" ];
      enable = true;
      startDelay = 0;
      sshProxy = true;
      shutdownTimeout = 150;
      nss.enable = false;
      onShutdown = "shutdown";
      parallelShutdown = 0;
      qemu = {
        package = pkgs.qemu;
        runAsRoot = true;
        swtpm = {
          enable = true;
          package = pkgs.swtpm;
        };
        ovmf = {
          enable = true;
          packages = with pkgs; [
            OVMFFull.fd
          ];
        };
        vhostUserPackages = [ pkgs.virtiofsd ];
      };
    };
  };

}
