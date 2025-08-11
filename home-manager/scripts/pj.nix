{
  pkgs,
  user,
  ...
}: {
  home.packages = [
    (pkgs.writeShellScriptBin "pj" ''
      EXCLUDE="'flake.nix|LICENSE|*.uid|*.import|Builds|media'"

      PROJECTS=$(${pkgs.fd}/bin/fd --type=d --hidden --glob '.git' /home/${user}/Projects/)
      PROJECTS=$(echo "$PROJECTS" | grep -Ff <(fd flake.nix -tf /home/${user}/Projects/ | sed 's|/flake.nix||'))
      PROJECTS=$(echo "$PROJECTS" | sed 's|/.git||' | sort -u)

      PREVIEW="${pkgs.eza}/bin/eza --tree --git-ignore --color=always --ignore-glob "$EXCLUDE" {}"
      SELECTED=$(echo "$PROJECTS" | ${pkgs.fzf}/bin/fzf --preview "$PREVIEW")

      if [ -n "$SELECTED" ]; then
        cd "$SELECTED" || exit
        nix develop
      fi
    '')
  ];
}
