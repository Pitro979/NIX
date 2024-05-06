{
  config,
  pkgs,
  inputs,
  ...
}: {
  home = {
    username = "pijo";
    homeDirectory = "/home/pijo";
  };

  imports = [
    ./programs
  ];

  programs.home-manager.enable = true;

  home.stateVersion = "23.11";
}
