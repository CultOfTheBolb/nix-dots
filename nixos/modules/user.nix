{
  pkgs,
  user,
  ...
}: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;
    users.yog-sothoth = {
      isNormalUser = true;
      description = "yog-sothoth";
      extraGroups = ["networkmanager" "wheel" "storage"];
    };
  };

  services.getty.autologinUser = user;
}
