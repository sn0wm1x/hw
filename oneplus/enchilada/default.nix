{
  # config,
  # pkgs,
  lib
, ...
}:
# let
# cfg = config.hardware.oneplus-enchilada;
# linuxPackages_sdm845 = pkgs.linuxPackagesFor (pkgs.callPackage ../../common/sdm845/kernel.nix { });
# uboot_sdm845 = pkgs.callPackage ./u-boot { };
# in
{
  options = {
    hardware.oneplus-enchilada = { };
  };

  config = {
    hardware.oneplus-enchilada = { };

    boot = {
      loader = {
        generic-extlinux-compatible.enable = lib.mkDefault true;
        grub.enable = false;
      };

      # kernelPackages = lib.mkDefault linuxPackages_sdm845;
    };
  };
}
