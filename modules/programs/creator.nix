

{pkgs, ... }:

{ 
  environment.systemPackages = with pkgs; [
    kicad
    freecad
    blender
    gimp
    inkscape
    krita
    ardour
    xournal
    darktable
    audacity
  ];
}
