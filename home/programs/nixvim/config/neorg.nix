{nixvim, pkgs, ...}:

{
  plugins.neorg = {
    enable = true;
    modules = {
      "core.defaults" = {
        __empty = null;
      };
    };
  };
  extraPlugins = with pkgs.vimPlugins; [
    neorg-telescope
  ];
}
