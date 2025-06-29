{ user, ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    "$term" = "kitty";
    "$browser" = "firefox";
    "$files" = "thunar";
    "$scriptsDir" = "/home/${user}/.nix/home-manager/scripts/";
  };
}
