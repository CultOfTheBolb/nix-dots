{
  programs.nvf.settings.vim = {
    keymaps = [
      {
        key = "y";
        mode = "n";
        action = "\"+y";
      }
      {
        key = "y";
        mode = "v";
        action = "\"+y";
      }
      {
        key = "p";
        mode = "n";
        action = "\"+p";
      }
      {
        key = "p";
        mode = "v";
        action = "\"+p";
      }
      {
        key = "x";
        mode = "n";
        action = "\"+x";
      }
      {
        key = "x";
        mode = "v";
        action = "\"+x";
      }

      {
        key = "<leader>sv";
        mode = "n";
        action = ":vsplit<cr>";
      }
      {
        key = "<leader>sh";
        mode = "n";
        action = ":split<cr>";
      }

      {
        key = "<c-h>";
        mode = "n";
        action = ":wincmd h<cr>";
      }
      {
        key = "<c-j>";
        mode = "n";
        action = ":wincmd j<cr>";
      }
      {
        key = "<c-k>";
        mode = "n";
        action = ":wincmd k<cr>";
      }
      {
        key = "<c-l>";
        mode = "n";
        action = ":wincmd l<cr>";
      }

      {
        key = "<c-]>";
        mode = "n";
        action = ":bnext<cr>";
      }
      {
        key = "<c-[>";
        mode = "n";
        action = ":bprev<cr>";
      }

      {
        key = "<leader>h";
        mode = "n";
        action = ":nohlsearch<CR>";
        desc = "Clear Search";
      }

      {
        key = "<leader>pf";
        mode = "n";
        action = ":Pick files<CR>";
        desc = "Pick Files";
      }
      {
        key = "<leader>pb";
        mode = "n";
        action = ":Pick buffers<CR>";
        desc = "Pick Buffers";
      }
      {
        key = "<leader>pl";
        mode = "n";
        action = ":Pick buf_lines<CR>";
        desc = "Pick Lines";
      }
      {
        key = "<leader>pg";
        mode = "n";
        action = ":Pick grep_live<CR>";
        desc = "Pick Grep";
      }
      {
        key = "<leader>pr";
        mode = "n";
        action = ":Pick registers<CR>";
        desc = "Pick Registers";
      }

      {
        key = "<leader>e";
        mode = "n";
        action = ":lua MiniFiles.open()<CR>";
        desc = "File Explorer";
      }

      {
        key = "<Up>";
        mode = "n";
        action = "<Nop>";
      }
      {
        key = "<Down>";
        mode = "n";
        action = "<Nop>";
      }
      {
        key = "<Right>";
        mode = "n";
        action = "<Nop>";
      }
      {
        key = "<Left>";
        mode = "n";
        action = "<Nop>";
      }
    ];
  };
}
