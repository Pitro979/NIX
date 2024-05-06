{
  inputs,
  pkgs,
  ...
}: {
  #gdm config
  services.xserver = {
    enable = true;
    displayManager = {
      sessionPackages = [
        pkgs.hyprland
      ];
      gdm.enable = true;
      gdm.wayland = true;
    };
    desktopManager.gnome.enable = true;
  };

  programs.dconf.enable = true;
}
