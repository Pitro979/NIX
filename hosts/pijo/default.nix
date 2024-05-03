{ config, lib, pkgs, ... }:

{
  imports = [
    ./configuration.nix
    ./hardware-configuration.nix
    ./services.nix
    ./desktop.nix
  ];

}
