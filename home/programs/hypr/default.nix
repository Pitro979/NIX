{ config, lib, pkgs, ... }:

{
  imports = [
    ./hyprland-environement.nix
  ];

  home.packages = with pkgs; [ 
    waybar
    eww
    swww
    kitty
  ];
  
  #test later systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;
    systemd.enable = true;
    settings = {
      "$mod" = "SUPER";
      bind = [
        "$mod, Q, exec, kitty"
        "$mod, c, killactive"
      ];
    };
  };
}
