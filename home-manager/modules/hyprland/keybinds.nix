{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mainMod, Q, killactive"
      "$mainMod CTRL, H, resizeactive,-50 0"
      "$mainMod CTRL, L, resizeactive,50 0"
      "$mainMod CTRL, K, resizeactive,0 -50"
      "$mainMod CTRL, J, resizeactive,0 50"

      "$mainMod ALT, H, movewindow, l"
      "$mainMod ALT, L, movewindow, r"
      "$mainMod ALT, K, movewindow, u"
      "$mainMod ALT, J, movewindow, d"

      "$mainMod, H, movefocus, l"
      "$mainMod, L, movefocus, r"
      "$mainMod, K, movefocus, u"
      "$mainMod, J, movefocus, d"

      "$mainMod, code:10, workspace, 1"
      "$mainMod, code:11, workspace, 2"
      "$mainMod, code:12, workspace, 3"
      "$mainMod, code:13, workspace, 4"
      "$mainMod, code:14, workspace, 5"
      "$mainMod, code:15, workspace, 6"
      "$mainMod, code:16, workspace, 7"
      "$mainMod, code:17, workspace, 8"
      "$mainMod, code:18, workspace, 9"
      "$mainMod, code:19, workspace, 10"

      "$mainMod SHIFT, code:10, movetoworkspace, 1"
      "$mainMod SHIFT, code:11, movetoworkspace, 2"
      "$mainMod SHIFT, code:12, movetoworkspace, 3"
      "$mainMod SHIFT, code:13, movetoworkspace, 4"
      "$mainMod SHIFT, code:14, movetoworkspace, 5"
      "$mainMod SHIFT, code:15, movetoworkspace, 6"
      "$mainMod SHIFT, code:16, movetoworkspace, 7"
      "$mainMod SHIFT, code:17, movetoworkspace, 8"
      "$mainMod SHIFT, code:18, movetoworkspace, 9"
      "$mainMod SHIFT, code:19, movetoworkspace, 10"
      "$mainMod SHIFT, bracketleft, movetoworkspace, -1 # brackets [ or ]"
      "$mainMod SHIFT, bracketright, movetoworkspace, +1"
    ];
  };
}
