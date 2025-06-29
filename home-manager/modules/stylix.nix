{pkgs, ...}: {
  stylix = {
    enable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";

    override = {
      base0D = "7aa2f7";
    };

    cursor = {
      package = pkgs.graphite-cursors;
      name = "graphite-dark-nord";
      size = 16;
    };

    iconTheme = {
      enable = true;
      package = pkgs.oranchelo-icon-theme;
      dark = "Oranchelo-Beka";
    };

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };
      serif = {
        package = pkgs.dejavu_fonts;
        name = "Dejavu Serif";
      };
    };

    targets = {
      qt.enable = true;
      nvf.enable = false;
    };
  };
}
