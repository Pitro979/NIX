{pkgs, ...}: {
  virtualisation.docker.enable = true;
  users.users.pijo.extragroups = ["docker"];
}
