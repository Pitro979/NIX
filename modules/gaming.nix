{
  config,
  pkgs,
  lib,
  ...
}: {
  programs.steam.enable = true;
  hardware.steam-hardware.enable = true; # Provides udev rules for controller, HTC vive, and Valve Index

  hardware.opengl.driSupport32Bit = true; # Needed for steam
  hardware.pulseaudio.support32Bit = true;

  services.xserver.modules = [pkgs.xorg.xf86inputjoystick];

  environment.systemPackages = with pkgs; [
    gamescope
  ];
}
