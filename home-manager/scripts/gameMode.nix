{pkgs, ...}: {
  home.packages = [
    (pkgs.writeShellScriptBin "gameMode" ''
      if pgrep -x "kanata" > /dev/null; then
        notify-send --transient --expire-time 1000 "Entering GameMode..."
        sudo systemctl stop kanata-internalKeyboard.service
      else
        notify-send --transient --expire-time 1000 "Exiting GameMode..."
        sudo systemctl start kanata-internalKeyboard.service
      fi
    '')
  ];
}
