{
  programs.nvf.settings.vim.terminal = {
    toggleterm = {
      enable = true;

      lazygit = {
        enable = true;

        direction = "float";

        mappings = {
          open = "<leader>G";
        };
      };

      mappings = {
        open = "<c-t>";
      };
    };
  };
}
