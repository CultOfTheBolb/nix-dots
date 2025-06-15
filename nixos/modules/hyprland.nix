{ pkgs, inputs, ... }:

{
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages."${pkgs.system}".hyprland;
    

    withUWSM = true;
    xwayland.enable = true;
  };

  security.pam.services.hyprlock = {};
}
