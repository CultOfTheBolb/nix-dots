{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Command line apps
    neovim
    yazi
    fastfetch
    lazygit

    # Command line utils
    git
    swww

    # Apps
    xfce.thunar
    kdePackages.dolphin
  ];
}
