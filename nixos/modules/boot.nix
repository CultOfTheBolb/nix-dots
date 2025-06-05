{
  boot.loader = {
    timeout = -1;
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      theme = "/boot/grub/themes/main-theme";
      extraEntries = ''
        menuentry "Bazzite" --class steamos {
            insmod part_gpt
            insmod btrfs
        
            set root=(hd1,gpt2)
        
            linux /ostree/default-efd454d7f6829d8895096a328920af423550a87155a9c279940128c0d1f05308/vmlinuz-6.13.9-103.bazzite.fc41.x86_64 \
                root=UUID=003da27c-f224-437f-a667-9cf36545f932 \
                rootflags=subvol=root rw \
                ostree=/ostree/boot.1/default/efd454d7f6829d8895096a328920af423550a87155a9c279940128c0d1f05308/1 \
                quiet
        
            initrd /ostree/default-efd454d7f6829d8895096a328920af423550a87155a9c279940128c0d1f05308/initramfs-6.13.9-103.bazzite.fc41.x86_64.img
        }
      '';
      useOSProber = true;
    };
    efi = {
      canTouchEfiVariables = true;
    };
    systemd-boot = {
      enable = false;
    };
  };
}
