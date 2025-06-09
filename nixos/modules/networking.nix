{
  networking.networkmanager.enable = true;

  services.openssh.enable = true;
  services.openssh.settings.PasswordAuthentication = true;
}
