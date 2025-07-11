{
  programs.nvf.settings.vim.autocomplete = {
    blink-cmp = {
      enable = true;

      friendly-snippets = {
        enable = true;
      };

      mappings = {
        close = "<C-e>";
        complete = "<C-space>";
        confirm = "<CR>";
        next = "<Down>";
        previous = "<Up>";
        scrollDocsUp = "<C-u>";
        scrollDocsDown = "<C-d>";
      };

      setupOpts = {
        cmdline = {
          keymap.preset = "cmdline";
        };

        completion = {
          documentation = {
            auto_show = true;
          };

          menu = {
            auto_show = true;
          };
        };

        fuzzy = {
          implementation = "rust";
        };
      };
    };
  };
}
