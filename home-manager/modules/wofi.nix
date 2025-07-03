{
  programs.wofi = {
    enable = true;

    settings = {
      mode = "drun";
      prompt = "Search...";
      allow_images = true;
      key_expand = "Tab";
      width = "60%";
      insensitive = true;
    };
  };
}
