{
  config,
  pkgs,
  inputs,
  ...
}: let
  config = import ./config;
  nvim = inputs.nixvim.legacyPackages.x86_64-linux.makeNixvimWithModule {
    inherit pkgs;
    module = config;
  };
in {
  home.packages = with pkgs; [
    nvim
  ];
}
