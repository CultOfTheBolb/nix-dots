{pkgs, ...}: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;
    users.thomas = {
      isNormalUser = true;
      description = "I am Thomas!";
      extraGroups = ["networkmanager" "wheel" "storage"];
    };
  };
}
