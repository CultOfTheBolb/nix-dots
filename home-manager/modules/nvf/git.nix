{
  programs.nvf.settings.vim.git = {
    gitsigns = {
      enable = true;

      codeActions = {
        enable = true;
      };

      mappings = {
        blameLine = "<leader>gb";
        diffProject = "<leader>gD";
        diffThis = "<leader>gd";
        previewHunk = "<leader>gh";
        nextHunk = "<leader>g[";
        previousHunk = "<leader>g]";
        toggleDeleted = "<leader>gt";

        resetBuffer = null;
        resetHunk = null;
        stageBuffer = null;
        stageHunk = null;
        toggleBlame = null;
        undoStageHunk = null;
      };
    };
  };
}
