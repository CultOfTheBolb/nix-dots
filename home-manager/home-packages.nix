{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Command line apps
    neovim
    yazi
    fastfetch

    # Command line utils
    git
    nix-output-monitor
    libnotify
    gdtoolkit_4

    # Apps
    godot
    xfce.thunar
    firefox

    # Utils
    networkmanagerapplet

    # Hyprland
    hyprshot
  ];
}
