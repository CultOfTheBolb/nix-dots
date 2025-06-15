{ pkgs, ... }:

{
  home.packages = [
    (pkgs.writeShellScriptBin "nv" ''
      if [[ -f "project.godot" ]]; then
          ${pkgs.neovim}/bin/nvim -n --listen /tmp/godot.pipe
      else
          ${pkgs.neovim}/bin/nvim -n
      fi
    '')
  ];
}
