{pkgs, ...}: {
  documentation.enable = true;
  documentation.man.enable = true;
  documentation.dev.enable = true;
  environment.systemPackages = with pkgs; [
    gdb
    libstdcxx5
    gdbm
    gcc
    libgcc
    clang
    libclang
    clib
    gnumake
    cmake
    man
  ];
}
