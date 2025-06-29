{
  programs.nvf.settings.vim.tabline = {
    nvimBufferline = {
      enable = true;

      setupOpts = {
        options = {
          always_show_bufferline = false;
          auto_toggle_bufferline = true;
          diagnositcs = "nvim_lsp";
          enforce_regular_tabs = true;
        };
      };

      mappings = {
        closeCurrent = "<leader>bc";
        cycleNext = "<leader>b]";
        cyclePrevious = "<leader>b[";
        moveNext = "<leader>bm]";
        movePrevious = "<leader>bm[";

        pick = null;
        sortByDirectory = null;
        sortByExtension = null;
        sortById = null;
      };
    };
  };
}
