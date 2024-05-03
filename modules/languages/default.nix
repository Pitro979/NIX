{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./clang.nix
    ./java.nix
    ./rust.nix
    ./python.nix
  ];
}
