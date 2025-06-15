
{ pkgs, user, ... }:

{
  imports = [
    ./modules
    ./services
  ];

  environment.systemPackages = [
    pkgs.home-manager
    pkgs.libsForQt5.qt5.qtgraphicaleffects
  ];

  networking.hostName = user;

  system.stateVersion = "24.11";
}
