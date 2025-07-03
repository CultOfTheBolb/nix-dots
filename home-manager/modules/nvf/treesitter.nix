{pkgs, ...}: {
  programs.nvf.settings.vim.treesitter = {
    enable = true;

    grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      gdscript
      gdshader
      godot_resource
    ];

    addDefaultGrammars = true;
    autotagHtml = true;
    fold = true;

    highlight = {
      enable = true;
    };

    incrementalSelection = {
      enable = true;
    };

    indent = {
      enable = true;
    };

    textobjects = {
      enable = true;
    };
  };
}
