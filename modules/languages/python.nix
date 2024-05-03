{pkgs, ...}: {
  config = {
    environment = {
      systemPackages = with pkgs; [
        conda
        python3
        python311Packages.pip
      ];
    };
  };
}
