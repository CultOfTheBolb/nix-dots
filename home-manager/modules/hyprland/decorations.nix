{
  wayland.windowManager.hyprland.settings = {
    decoration = {
      rounding = "5";

      active_opacity = "0.95";
      inactive_opacity = "0.9";
      fullscreen_opacity = "1.0";

      dim_inactive = "true";
      dim_strength = "0.1";
      dim_special = "0.8";

      shadow = {
        enabled = "true";

        range = "2";
        render_power = "1";
      };

      blur = {
        enabled = "true";

        size = "6";
        passes = "2";
        ignore_opacity = "true";
        new_optimizations = "true";
        special = "true";
      };
    };

    animations = {
      enabled = "1";

      bezier = [
        "default, 0.05, 0.9, 0.1, 1.05"
        "wind, 0.05, 0.9, 0.1, 1.05"
        "overshot, 0.13, 0.99, 0.29, 1.08"
        "liner, 1, 1, 1, 1"
      ];

      animation = [
        "windows, 1, 7, wind, popin"
        "windowsIn, 1, 7, overshot, popin"
        "windowsOut, 1, 5, overshot, popin"
        "windowsMove, 1, 6, overshot, slide"
        "layers, 1, 5, default, popin"
        "fadeIn, 1, 10, default"
        "fadeOut, 1, 10, default"
        "fadeSwitch, 1, 10, default"
        "fadeShadow, 1, 10, default"
        "fadeDim, 1, 10, default"
        "fadeLayers, 1, 10, default"
        "workspaces, 1, 6, overshot, slide"
        "border, 1, 1, liner"
        "borderangle, 1, 30, liner, once"
      ];
    };
  };
}
