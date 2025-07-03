{pkgs, ...}: {
  services.greetd = {
    enable = true;
  };

  programs.regreet = {
    enable = true;

    theme = {
      name = "Tokyonight-Dark";
      package = pkgs.tokyonight-gtk-theme;
    };

    cursorTheme = {
      package = pkgs.graphite-cursors;
      name = "graphite-dark-nord";
    };
  };
}
