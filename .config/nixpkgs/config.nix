{lib, pkgs}:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages =
    lib.optional (pkgs.obsidian.version == "1.4.16") "electron-25.9.0";
}
