{
  pkgs,
  user,
  ...
}: {
  programs.zsh = {
    enable = true;

    dotDir = ".config/zsh";

    enableCompletion = true;

    autosuggestion = {
      enable = true;
    };

    syntaxHighlighting = {
      enable = true;
    };

    shellAliases = with pkgs; {
      ".." = "cd ..";

      ls = "${eza}/bin/eza -a --icons";
      ll = "${eza}/bin/eza -al --icons";
      la = "${eza}/bin/eza -a --tree --level=2 --icons";

      fman = "compgen -c | fzf | xargs man";
      fzf = "fzf -m --preview 'bat --style numbers,changes --color=always {}'";
      fzfo = "nvim $(fzf -m --preview 'bat --style numbers,changes --color=always {}')";

      pj = "yazi $(${fd}/bin/fd --type=d --hidden --glob '.git' /home/${user}/Projects/ | sed 's|/\.git||' | fzf --preview '${eza}/bin/eza --tree --color=always {}')";

      x = "exit";
    };

    oh-my-zsh = {
      enable = true;

      plugins = [
        "sudo"
        "git"
        "copyfile"
        "copybuffer"
      ];
    };
  };
}
