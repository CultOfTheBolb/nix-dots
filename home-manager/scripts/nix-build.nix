{ pkgs, ... }:

{
  home.packages = [
    (pkgs.writeShellScriptBin "nix-build" ''
      cd ./.nix && sudo nixos-rebuild switch --flake ./ && nix run home-manager -- switch --flake .#yog-sothoth
    '')
  ];
}
