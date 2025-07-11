{config, ...}: {
  programs.wofi = {
    enable = true;

    settings = {
      mode = "drun";
      prompt = "Search...";
      allow_images = true;
      key_expand = "Tab";
      width = "60%";
      insensitive = true;
      hide_scroll = true;
    };

    style = ''
      * {
        font-family: 'JetBrainsMono Nerd Font', monospace;
        font-size: 18px;
      }

      window {
        margin: 0px;
        padding: 10px;
        border: 2px solid #${config.colors.base0D};
        border-radius: 8px;
        background-color: #${config.colors.base00};
      }

      #inner-box {
        margin: 5px;
        padding: 10px;
        border: none;
        background-color: #${config.colors.base00};
      }

      #outer-box {
        margin: 5px;
        padding: 10px;
        border: none;
        background-color: #${config.colors.base00};
      }

      #scroll {
        margin: 0px;
        padding: 10px;
        border: none;
        background-color: #${config.colors.base00};
      }

      #input {
        margin: 5px 20px;
        padding: 10px;
        border: none;
        border-radius: 8px;
        color: #${config.colors.base05};
        background-color: #${config.colors.base00};
      }

      #input image {
          border: none;
          color: #${config.colors.base0F};
      }

      #input * {
        outline: 4px solid #${config.colors.base0E}!important;
      }

      #text {
        margin: 5px;
        border: none;
        color: #${config.colors.base05};
      }

      #entry {
        background-color: #${config.colors.base00};
      }

      #entry arrow {
        border: none;
        color: #${config.colors.base0D};
      }

      #entry:selected {
        border: 0.11em solid #${config.colors.base0D};
        border-radius: 8px;
      }

      #entry:selected #text {
        color: #${config.colors.base0E};
      }

      #entry:drop(active) {
        background-color: #${config.colors.base0D}!important;
      }

      image{
        margin-left: .25em;
        margin-right: .25em;
      }
    '';
  };
}
