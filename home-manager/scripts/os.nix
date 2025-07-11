{
  pkgs,
  user,
  ...
}: {
  home.packages = [
    (pkgs.writeShellScriptBin "os" ''
      cd /home/${user}/.nix &&
      ${pkgs.git}/bin/git add . &&
      ${pkgs.nh}/bin/nh os switch &&
      ${pkgs.nh}/bin/nh home switch
    '')
  ];
}
