{
  programs.kitty = {
    enable = true;

    enableGitIntegration = true;

    settings = {
      confirm_os_window_close = 0;
      scrollback_lines = 2000;
      wheel_scroll_min_lines = 1;
      cursor_trail = 5;
      enable_audio_bell = false;
      paste_action = "no_op";
      clipboard_control = "write-clipboard write-primary read-clipboard read-primary";
    };
  };
}
