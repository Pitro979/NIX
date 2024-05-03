{ config, lib, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    font.name = "fira-code-nerdfont";
    font.package = pkgs.fira-code-nerdfont;
    shellIntegration.enableFishIntegration = true;
    extraConfig = ''
      shell fish
    '';
  };
}
