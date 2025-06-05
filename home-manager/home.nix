{ homeStateVersion, user, ... }: {
  imports = [
    ./home-packages.nix
    ./modules
    ./scripts
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };

  programs.home-manager.enable = true;
}
