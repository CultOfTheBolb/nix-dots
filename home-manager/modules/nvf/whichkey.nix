{
  programs.nvf.settings.vim.binds.whichKey = {
    enable = true;

    setupOpts = {
      preset = "helix";

      replace = {
        "<leader>" = "SPACE";
      };

      spec = [
        {
          lhs = "<leader>e";
          icon = "󰙅";
        }

        {
          lhs = "<leader>p";
          group = "+Pick";
          icon = "";
        }
        {
          lhs = "<leader>pf";
          icon = "";
        }
        {
          lhs = "<leader>pb";
          icon = "";
        }

        {
          lhs = "<leader>c";
          icon = "";
        }
        {
          lhs = "<leader>cv";
          icon = "";
        }

        {
          lhs = "<leader>bsi";
          hidden = true;
        }
      ];
    };
  };
}
