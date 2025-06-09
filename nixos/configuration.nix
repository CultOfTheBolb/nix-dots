
{ pkgs, user, ... }:

{
  imports = [
    ./modules
    ./services
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = user;

  system.stateVersion = "24.11";
}
