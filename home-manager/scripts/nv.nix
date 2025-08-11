{pkgs, ...}: {
  home.packages = [
    (pkgs.writeShellScriptBin "nv" ''
      rm -rf /tmp/godot.pipe
      if [[ -f "project.godot" ]]; then
          nvim -n --listen /tmp/godot.pipe
      else
          nvim -n
      fi
    '')
  ];
}
