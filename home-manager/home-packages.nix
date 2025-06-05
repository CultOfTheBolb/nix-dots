{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically
    
    # Command line apps
    neovim
    yazi
    fastfetch
    lazygit

    # Command line utils
    git
  ];
}
