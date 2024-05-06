{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./hypr
    #./nixvim
    ./kitty.nix
  ];
}
