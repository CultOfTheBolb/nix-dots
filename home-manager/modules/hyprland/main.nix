{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {

      "$mainMod" = "SUPER";

      "$term" = "kitty";

    };
  };
}
# Default
# "$browser" = "firefox";
# "$files" = "thunar";
#
# "$scriptsDir" = "$HOME/.config/hypr/Scripts";
# "$configs" = "$HOME/.config/hypr/configs";
#
# # User
# "$UserScripts" = "$HOME/.config/hypr/UserScripts";
#
# bind = CTRL ALT, Delete, exec, hyprctl dispatch exit 0
# bind = $mainMod, Q, killactive,
# bind = $mainMod, F, fullscreen 
# bind = $mainMod ALT, Q, exec, $scriptsDir/KillActiveProcess.sh
# bind = $mainMod SHIFT, F, togglefloating,
# bind = $mainMod ALT, F, exec, hyprctl dispatch workspaceopt allfloat
# bind = CTRL ALT, L, exec, $scriptsDir/LockScreen.sh
# bind = $mainMod, Return, exec, $term  # Launch terminal
# bind = $mainMod, D, exec, $files # Launch file manager
# bindn = ALT_L, SHIFT_L, exec, $scriptsDir/SwitchKeyboardLayout.sh # Changing the keyboard layout
# bind = $mainMod, P, exec, pkill wlogout || wlogout # Run wlogout
# bind = $mainMod, B, exec, $browser # Run browser
#
# # pyprland
# bind = $mainMod ALT, Return, exec, pypr toggle term # Dropdown terminal
# bind = $mainMod ALT, B, exec, pypr toggle blue # Bluetooth menu
# bind = $mainMod ALT, K, exec, pypr toggle proc # Bluetooth menu
#
# # FEATURES / EXTRAS
# bind = $mainMod ALT, R, exec, $scriptsDir/Refresh.sh # Refresh waybar, swaync, wofi
# bind = $mainMod ALT, V, exec, $scriptsDir/ClipManager.sh # Clipboard Manager
# bind = $mainMod, N, exec, swaync-client -t -sw # SwayNC panel
# bind = $mainMod ALT, G, exec, $scriptsDir/GameMode.sh  # Activate GameMode
# bind = $mainMod ALT, P, exec, hyprpicker -a # ColorPicker
#
# # Wofi
# bind = $mainMod, W, exec, pkill wofi || $scriptsDir/WifiMenu.sh # Run wifi menu
# bind = $mainMod, A, exec, pkill wofi || wofi #pkill rofi || true && ags -t 'overview'
# # bind = $mainMod, P, exec, pkill wofi || $scriptsDir/PowerMenu.sh # Run power menu
#
# # hy3 Layout
# # binde = $mainMod SHIFT, L, resizeactive, -50 0
# # binde = $mainMod SHIFT, H, resizeactive, 50 0
# # binde = $mainMod SHIFT, J, resizeactive, 0 -50
# # binde = $mainMod SHIFT, K, resizeactive, 0 50
# #
# # bind = $mainMod CTRL, H, movewindow, l
# # bind = $mainMod CTRL, L, movewindow, r
# # bind = $mainMod CTRL, K, movewindow, u
# # bind = $mainMod CTRL, J, movewindow, d
# #
# # bind = $mainMod, H, movefocus, l
# # bind = $mainMod, L, movefocus, r
# # bind = $mainMod, K, movefocus, u
# # bind = $mainMod, J, movefocus, d
# #
# # bind = $mainMod, G, makegroup, tab, force_ephemeral
#
# # Master Layout
# binde = $mainMod ALT, H, resizeactive,-50 0
# binde = $mainMod ALT, L, resizeactive,50 0
# binde = $mainMod ALT, K, resizeactive,0 -50
# binde = $mainMod ALT, J, resizeactive,0 50
#
# bind = $mainMod CTRL, H, movewindow, l
# bind = $mainMod CTRL, L, movewindow, r
# bind = $mainMod CTRL, K, movewindow, u
# bind = $mainMod CTRL, J, movewindow, d
#
# bind = $mainMod, H, movefocus, l
# bind = $mainMod, L, movefocus, r
# bind = $mainMod, K, movefocus, u
# bind = $mainMod, J, movefocus, d
# bind = $mainMod CTRL, D, layoutmsg, removemaster
# bind = $mainMod, I, layoutmsg, addmaster
# bind = $mainMod, J, layoutmsg, cyclenext bind = $mainMod, K, layoutmsg, cycleprev
# bind = $mainMod, M, exec, hyprctl dispatch splitratio 0.3
# bind = $mainMod, P, pseudo, # dwindle
# bind = $mainMod CTRL, Return, layoutmsg, swapwithmaster
#
#  # Cycle windows if floating bring to top
# bind = ALT, tab, cyclenext
# bind = ALT, tab, bringactivetotop  
#
# # Special Keys / Hot Keys
# bindel = , xf86audioraisevolume, exec, $scriptsDir/Volume.sh --inc #volume up
# bindel = , xf86audiolowervolume, exec, $scriptsDir/Volume.sh --dec #volume down
# bindl = , xf86AudioMicMute, exec, $scriptsDir/Volume.sh --toggle-mic #mute mic
# bindl = , xf86audiomute, exec, $scriptsDir/Volume.sh --toggle
# bindl = , xf86Sleep, exec, systemctl suspend  # sleep button 
# bindl = , xf86Rfkill, exec, $scriptsDir/AirplaneMode.sh #Airplane mode
#
# # media controls using keyboards
# bindl = , xf86AudioPlayPause, exec, $scriptsDir/MediaCtrl.sh --pause
# bindl = , xf86AudioPause, exec, $scriptsDir/MediaCtrl.sh --pause
# bindl = , xf86AudioPlay, exec, $scriptsDir/MediaCtrl.sh --pause
# bindl = , xf86AudioNext, exec, $scriptsDir/MediaCtrl.sh --nxt
# bindl = , xf86AudioPrev, exec, $scriptsDir/MediaCtrl.sh --prv
# bindl = , xf86audiostop, exec, $scriptsDir/MediaCtrl.sh --stop
#
# # Screenshot keybindings
# bind = $mainMod, print, exec, hyprshot -m window -o /home/gamemasterarch/Pictures/Screenshots/
# bind = $mainMod ALT, print, exec, hyprshot -m region -o /home/gamemasterarch/Pictures/Screenshots/
#
#
# # Workspaces related
# bind = $mainMod, tab, workspace, m+1
# bind = $mainMod SHIFT, tab, workspace, m-1
#
# # Special workspace
# bind = $mainMod SHIFT, U, movetoworkspace, special
# bind = $mainMod, U, togglespecialworkspace,
#
# # The following mappings use the key codes to better support various keyboard layouts
# # 1 is code:10, 2 is code 11, etc
# # Switch workspaces with mainMod + [0-9] 
# bind = $mainMod, code:10, workspace, 1
# bind = $mainMod, code:11, workspace, 2
# bind = $mainMod, code:12, workspace, 3
# bind = $mainMod, code:13, workspace, 4
# bind = $mainMod, code:14, workspace, 5
# bind = $mainMod, code:15, workspace, 6
# bind = $mainMod, code:16, workspace, 7
# bind = $mainMod, code:17, workspace, 8
# bind = $mainMod, code:18, workspace, 9
# bind = $mainMod, code:19, workspace, 10
#
# # Move active window and follow to workspace mainMod + SHIFT [0-9]
# bind = $mainMod SHIFT, code:10, movetoworkspace, 1, follow
# bind = $mainMod SHIFT, code:11, movetoworkspace, 2, follow
# bind = $mainMod SHIFT, code:12, movetoworkspace, 3, follow
# bind = $mainMod SHIFT, code:13, movetoworkspace, 4, follow
# bind = $mainMod SHIFT, code:14, movetoworkspace, 5, follow
# bind = $mainMod SHIFT, code:15, movetoworkspace, 6, follow
# bind = $mainMod SHIFT, code:16, movetoworkspace, 7, follow
# bind = $mainMod SHIFT, code:17, movetoworkspace, 8, follow
# bind = $mainMod SHIFT, code:18, movetoworkspace, 9, follow
# bind = $mainMod SHIFT, code:19, movetoworkspace, 10, follow
# bind = $mainMod SHIFT, bracketleft, movetoworkspace, -1, follow # brackets [ or ]
# bind = $mainMod SHIFT, bracketright, movetoworkspace, +1, follow
#
# # Move active window to a workspace silently mainMod + CTRL [0-9]
# bind = $mainMod CTRL, code:10, movetoworkspace, 1
# bind = $mainMod CTRL, code:11, movetoworkspace, 2
# bind = $mainMod CTRL, code:12, movetoworkspace, 3
# bind = $mainMod CTRL, code:13, movetoworkspace, 4
# bind = $mainMod CTRL, code:14, movetoworkspace, 5
# bind = $mainMod CTRL, code:15, movetoworkspace, 6
# bind = $mainMod CTRL, code:16, movetoworkspace, 7
# bind = $mainMod CTRL, code:17, movetoworkspace, 8
# bind = $mainMod CTRL, code:18, movetoworkspace, 9
# bind = $mainMod CTRL, code:19, movetoworkspace, 10
# bind = $mainMod CTRL, bracketleft, movetoworkspace, -1 # brackets [ or ]
# bind = $mainMod CTRL, bracketright, movetoworkspace, +1
#
# # Scroll through existing workspaces with mainMod + scroll
# bind = $mainMod, mouse_down, workspace, e+1
# bind = $mainMod, mouse_up, workspace, e-1
# bind = $mainMod, period, workspace, e+1
# bind = $mainMod, comma, workspace, e-1
#
# # Move/resize windows with mainMod + LMB/RMB and dragging
# bindm = $mainMod, mouse:272, movewindow
# bindm = $mainMod, mouse:273, resizewindow

