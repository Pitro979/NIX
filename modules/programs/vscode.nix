{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        catppuccin.catppuccin-vsc-icons
        jnoortheen.nix-ide
        llvm-vs-code-extensions.vscode-clangd
        mkhl.direnv
      ]; # ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace
    })
  ];
}
