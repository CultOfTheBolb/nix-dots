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
    nix-output-monitor
    libnotify

    # Apps
    xfce.thunar
    firefox

    # Utils
    networkmanagerapplet

    # Hyprland
    hyprshot
  ];
}
