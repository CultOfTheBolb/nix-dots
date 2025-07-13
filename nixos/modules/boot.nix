{
  boot = {
    loader = {
      timeout = -1;

      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;
      };

      efi = {
        canTouchEfiVariables = true;
      };

      systemd-boot = {
        enable = false;
      };
    };
  };
}
