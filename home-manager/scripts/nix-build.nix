{ pkgs, ... }:

{
  home.packages = [
    (pkgs.writeShellScriptBin "nix-build" ''
      cd /home/yog-sothoth/.nix && git add . && sudo nixos-rebuild switch --flake .#yog-sothoth && home-manager switch --flake .#yog-sothoth
    '')
  ];
}
