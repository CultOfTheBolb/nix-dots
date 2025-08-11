{
  programs = {
    git = {
      enable = true;

      userName = "CultOfTheBlob";
      userEmail = "human.choupani@gmail.com";

      extraConfig = {
        init.defaultBranch = "main";
      };
    };

    git-credential-oauth = {
      enable = true;
    };
  };
}
