{
  programs.nvf = {
    enable = true;

    settings.vim = {
      theme = {
        enable = true;
        name = "tokyonight";
        style = "night";
      };


      globals = {
        mapleader = " ";
      };

      lineNumberMode = "relNumber";

      undoFile.enable = true;

      options = {
        tabstop = 2;
        shiftwidth = 2;
        expandtab = true;
      };
    };
  };
}
