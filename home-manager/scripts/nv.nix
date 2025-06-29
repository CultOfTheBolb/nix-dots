{pkgs, ...}: {
  home.packages = [
    (pkgs.writeShellScriptBin "nv" ''
      if [[ -f "project.godot" ]]; then
          nvim -n --listen /tmp/godot.pipe
      else
          nvim -n
      fi
    '')
  ];
}
