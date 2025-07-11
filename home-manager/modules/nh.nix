{user, ...}: {
  programs.nh = {
    enable = true;
    flake = "/home/${user}/.nix";

    clean = {
      enable = true;
      dates = "weekly";
      extraArgs = "--keep 5";
    };
  };
}
