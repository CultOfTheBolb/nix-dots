{ user, ... }: {
  imports = [
    ./home-packages.nix
    ./modules
    ./scripts
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
