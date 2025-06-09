{ pkgs, ... }:

{
  stylix = {
    enable = true;

    autoEnable = false;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";

    image = ./wallpaper.png;
    
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
      grub = {
        enable = true;
	useWallpaper = true;
      };

      console.enable = true;
    };
  };
}
