{
  programs.wlogout = {
    enable = true;

    layout = [
      {
        label = "Lock";
        action = "systemctl";
        text = "";
        keybind = "l";
      }
      {
        label = "Reboot";
        action = "systemctl reboot";
        text = "";
        keybind = "l";
      }
      {
        label = "Shutdown";
        action = "systemctl poweroff";
        text = "";
        keybind = "l";
      }
      {
        label = "Logout";
        action = "loginctl kill-session $XDG_SESSION_ID";
        text = "";
        keybind = "l";
      }
      {
        label = "Suspend";
        action = "systemctl suspend";
        text = "";
        keybind = "l";
      }
      {
        label = "Hibernate";
        action = "systemctl hibernate";
        text = "";
        keybind = "l";
      }
    ];
  };
}
