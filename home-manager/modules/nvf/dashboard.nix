{
  programs.nvf.settings.vim.dashboard = {
    startify = {
      enable = true;

      bookmarks = [
        {
          p = "~/Projects/";
        }
        {
          n = "~/.nix/";
        }
      ];

      changeDirCmd = "tcd";
      changeToDir = true;
      changeToVCRoot = false;
      disableOnStartup = false;
      filesNumber = 5;
      paddingLeft = 4;
      sessionAutoload = false;
      sessionDeleteBuffers = true;
      sessionDir = "~/config/nvim/session";
      sessionPersistence = false;
      unsafe = false;
      updateOldFiles = true;

      commands = [
        {
          f = "Pick files";
        }
        {
          g = "Pick grep_live";
        }
        {
          r = "Pick registers";
        }
      ];

      lists = [
        {
          header = [
            "Commands"
          ];
          type = "commands";
        }
        {
          header = [
            "Bookmarks"
          ];
          type = "bookmarks";
        }
        {
          header = [
            "Recent Files"
          ];
          type = "files";
        }
        {
          header = [
            "Recent Directories"
          ];
          type = "dir";
        }
      ];

      customFooter = [
        "   _                _________ _______ "
        "  ( (    /||\\     /|\\__   __/(       )"
        "  |  \\  ( || )   ( |   ) (   | () () |"
        "  |   \\ | || |   | |   | |   | || || |"
        "  | (\\ \\) |( (   ) )   | |   | |(_)| |"
        "  | | \\   | \\ \\_/ /    | |   | |   | |"
        "  | )  \\  |  \\   /  ___) (___| )   ( |"
        "  |/    )_)   \\_/   \\_______/|/     \\|"
      ];
    };
  };
}
