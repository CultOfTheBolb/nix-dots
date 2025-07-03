{
  programs.nvf.settings.vim.languages = {
    enableTreesitter = true;
    enableDAP = true;
    enableFormat = true;
    enableExtraDiagnostics = true;

    nix = {
      enable = true;

      format = {
        type = "alejandra";
      };

      lsp = {
        enable = true;

        server = "nixd";
      };
    };
  };
}
