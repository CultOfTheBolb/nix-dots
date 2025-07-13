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
    dotnet-sdk

    # Apps
    godot-mono
    xfce.thunar

    # Utils
    networkmanagerapplet
    pulseaudio
    omnisharp-roslyn
  ];
}
