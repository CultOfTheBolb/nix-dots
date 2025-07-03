{user, ...}: {
  wayland.windowManager.hyprland.settings = {
    bind = [
      #GENERAL
      "$mainMod, Q, killactive"
      "$mainMod ALT, Q, exec, $scriptsDir/KillActiveProcess.sh"

      "$mainMod, F, fullscreen"
      "$mainMod SHIFT, F, togglefloating"
      "$mainMod ALT, F, exec, hyprctl dispatch workspaceopt allfloat"

      "$mainMod ALT, G, exec, $scriptsDir/GameMode.sh"

      #APPS
      "$mainMod, Return, exec, $term"
      "$mainMod, B, exec, $browser"
      "$mainMod, D, exec, $files"

      #DMENU
      "$mainMod, A, exec, pkill wofi || wofi --show drun"
      "$mainMod, W, exec, pkill networkmanager_dmenu || networkmanager_dmenu"
      "$mainMod, W, exec, pkill wofi || $scriptsDir/WifiMenu.sh"

      #SERVICES
      "$mainMod, N, exec, swaync-client -t -sw"
      "CTRL ALT, L, exec, $scriptsDir/LockScreen.sh"
      "$mainMod, P, exec, pkill wlogout || wlogout"

      "$mainMod ALT, Return, exec, pypr toggle term"
      "$mainMod ALT, B, exec, pypr toggle blue"
      "$mainMod ALT, K, exec, pypr toggle proc"

      "$mainMod ALT, P, exec, hyprpicker -a"

      "$mainMod, print, exec, hyprshot -m window -o /home/${user}/Pictures/Screenshots/"
      "$mainMod ALT, print, exec, hyprshot -m region -o /home/${user}/Pictures/Screenshots/"

      #WINDOW MANAGEMENT
      "$mainMod CTRL, H, resizeactive,-50 0"
      "$mainMod CTRL, L, resizeactive,50 0"
      "$mainMod CTRL, K, resizeactive,0 -50"
      "$mainMod CTRL, J, resizeactive,0 50"

      "$mainMod ALT, H, hy3:movewindow, l"
      "$mainMod ALT, L, hy3:movewindow, r"
      "$mainMod ALT, K, hy3:movewindow, u"
      "$mainMod ALT, J, hy3:movewindow, d"

      "$mainMod, H, hy3:movefocus, l"
      "$mainMod, L, hy3:movefocus, r"
      "$mainMod, K, hy3:movefocus, u"
      "$mainMod, J, hy3:movefocus, d"

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

      "$mainMod SHIFT, code:10, movetoworkspace, 1, follow"
      "$mainMod SHIFT, code:11, movetoworkspace, 2, follow"
      "$mainMod SHIFT, code:12, movetoworkspace, 3, follow"
      "$mainMod SHIFT, code:13, movetoworkspace, 4, follow"
      "$mainMod SHIFT, code:14, movetoworkspace, 5, follow"
      "$mainMod SHIFT, code:15, movetoworkspace, 6, follow"
      "$mainMod SHIFT, code:16, movetoworkspace, 7, follow"
      "$mainMod SHIFT, code:17, movetoworkspace, 8, follow"
      "$mainMod SHIFT, code:18, movetoworkspace, 9, follow"
      "$mainMod SHIFT, code:19, movetoworkspace, 10, follow"
      "$mainMod SHIFT, bracketleft, movetoworkspace, -1"
      "$mainMod SHIFT, bracketright, movetoworkspace, +1"

      "$mainMod, tab, workspace, m+1"
      "$mainMod SHIFT, tab, workspace, m-1"

      "$mainMod ALT, code:10, movetoworkspace, 1"
      "$mainMod ALT, code:11, movetoworkspace, 2"
      "$mainMod ALT, code:12, movetoworkspace, 3"
      "$mainMod ALT, code:13, movetoworkspace, 4"
      "$mainMod ALT, code:14, movetoworkspace, 5"
      "$mainMod ALT, code:15, movetoworkspace, 6"
      "$mainMod ALT, code:16, movetoworkspace, 7"
      "$mainMod ALT, code:17, movetoworkspace, 8"
      "$mainMod ALT, code:18, movetoworkspace, 9"
      "$mainMod ALT, code:19, movetoworkspace, 10"
      "$mainMod ALT, bracketleft, movetoworkspace, -1"
      "$mainMod ALT, bracketright, movetoworkspace, +1"

      "ALT, tab, cyclenext"
      "ALT, tab, bringactivetotop"

      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"
      "$mainMod, period, workspace, e+1"
      "$mainMod, comma, workspace, e-1"

      "$mainMod, G, hy3:makegroup"
    ];

    bindm = [
      #WINDOW MANAGEMENT
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    bindl = [
      #HOTKEYS
      ", xf86audioraisevolume, exec, $scriptsDir/Volume.sh --inc"
      ", xf86audiolowervolume, exec, $scriptsDir/Volume.sh --dec"
      ", xf86AudioMicMute, exec, $scriptsDir/Volume.sh --toggle-mic"
      ", xf86audiomute, exec, $scriptsDir/Volume.sh --toggle"
      ", xf86Sleep, exec, systemctl suspend"

      #MEDIA CONTROLS
      ", xf86AudioPlayPause, exec, $scriptsDir/MediaCtrl.sh --pause"
      ", xf86AudioPause, exec, $scriptsDir/MediaCtrl.sh --pause"
      ", xf86AudioPlay, exec, $scriptsDir/MediaCtrl.sh --pause"
      ", xf86AudioNext, exec, $scriptsDir/MediaCtrl.sh --nxt"
      ", xf86AudioPrev, exec, $scriptsDir/MediaCtrl.sh --prv"
      ", xf86audiostop, exec, $scriptsDir/MediaCtrl.sh --stop"
    ];
  };
}
