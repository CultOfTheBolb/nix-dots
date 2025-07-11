{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "noblur, title:^(gamescope)$"
      "fullscreen, title:^(gamescope)$"
      "workspace 6 silent, title:^(gamescope)$"

      "center, class:([Tt]hunar), title:(File Operation Progress)"
      "center, class:([Tt]hunar), title:(Confirm to replace files)"
      "move 72% 7%,title:^(Picture-in-Picture)$ "

      "idleinhibit fullscreen, class:^(*)$"
      "idleinhibit fullscreen, title:^(*)$"
      "idleinhibit fullscreen, fullscreen:1"

      "tile, title:^(Godot)$"

      "workspace 1, title:^(Godot)$"
      "workspace 5, class:^([Ff]irefox|org.mozilla.firefox|[Ff]irefox-esr)$"
      "workspace 3, class:^([Tt]hunar)$"
      "workspace 10, class:^(com.obsproject.Studio)$"
      "workspace 4, class:^([Ss]team)$"
      "workspace 4, class:^([Ll]utris)$"
      "workspace 7, class:^([Ll]egcord)$"

      "workspace 6 silent, class:^(virt-manager)$"
      "workspace 9 silent, class:^([Aa]udacious)$"

      "float, class:^(org.kde.polkit-kde-authentication-agent-1)$"
      "float, class:(xdg-desktop-portal-gtk)"
      "float, class:(electron), title:(Add Folder to Workspace)"
      "float, class:^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$"
      "float, class:^(nm-applet|nm-connection-editor|blueman-manager)$"
      "float, title:(Kvantum Manager)"
      "float, class:^([Ss]team)$,title:^((?![Ss]team).*|[Ss]team [Ss]ettings)$"
      "float, title:^(Picture-in-Picture)$"

      "size 70% 70%, class:^(xdg-desktop-portal-gtk)$"
      "size 60% 70%, title:(Kvantum Manager)"
      "size 60% 70%, class:^(qt6ct)$"

      "keepaspectratio, title:^(Picture-in-Picture)$"
    ];
  };
}
