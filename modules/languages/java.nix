{pkgs, ...}: {
  config = {
    environment = {
      systemPackages = with pkgs; [
        xorg.libXxf86vm
        xorg.libXtst
        javaPackages.openjfx21
        jdk21
        jetbrains.idea-community
        umlet
      ];
      etc = with pkgs; {
        "jdk21".source = jdk21;
      };
    };
    nixpkgs.config.packageOverrides = pkgs: {
      jdk21 = pkgs.jdk21.override {enableJavaFX = true;};
    };
  };
}
