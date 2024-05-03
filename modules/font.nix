
{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    jetbrains-mono
    fira-code-nerdfont
    nerd-font-patcher
  ]; 
}

