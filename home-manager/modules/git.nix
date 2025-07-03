{
  programs.git = {
    enable = true;

    userName = "Gamemaster-git";
    userEmail = "human.choupani@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
