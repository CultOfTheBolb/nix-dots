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
    wl-clipboard

    # Apps
    godot-mono
    xfce.thunar
    vlc

    # Utils
    networkmanagerapplet
    pulseaudio
  ];
}
