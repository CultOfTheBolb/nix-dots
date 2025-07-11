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
    wl-clipboard
    pulseaudio

    # Apps
    godot
    xfce.thunar

    # Utils
    networkmanagerapplet

    # Hyprland
    hyprshot
  ];
}
