{
  programs.nvf.settings.vim.statusline = {
    lualine = {
      enable = true;

      componentSeparator = {
        left = "";
        right = "";
      };

      sectionSeparator = {
        left = "";
        right = "";
      };

      globalStatus = false;

      activeSection = {
        a = [
          ''
            {
              "mode",
              icons_enabled = true,
              separator = {
                left = "",
                right = "",
              },
              right_padding = 2,
            }
          ''
        ];

        b = [
          ''
            {
              "filename",
              icons_enabled = true,
              separator = {
                right = "",
              },
            }
          ''
          ''
            {
              "branch",
              icons_enabled = true,
              separator = {
                right = "",
              },
            }
          ''
          ''
            {
              "diff",
              icons_enabled = true,
              separator = {
                right = "",
              },
            }
          ''
        ];

        c = [
          ''
            {
              "%=",
              icons_enabled = true,
            }
          ''
          ''
            {
              "lsp_status",
              icons_enabled = true,
            }
          ''
          ''
            {
              "diagnostic",
              icons_enabled = true,
            }
          ''
        ];

        x = [
        ];

        y = [
          ''
            {
              "filetype",
              icons_enabled = true,
              separator = {
                left = "",
              },
            }
          ''
          ''
            {
              "filesize",
              icons_enabled = true,
              separator = {
                left = "",
              },
            }
          ''
        ];

        z = [
          ''
            {
              "location",
              icons_enabled = true,
              separator = {
                left = "",
                right = "",
              },
              right_padding = 2,
            }
          ''
        ];
      };

      inactiveSection = {
        a = [
          ''
            { "filename" }
          ''
        ];

        b = [
        ];

        c = [
        ];

        x = [
        ];

        y = [
        ];

        z = [
          ''
            { "location" }
          ''
        ];
      };
    };
  };
}
