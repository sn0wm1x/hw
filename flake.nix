{
  description = "github:sn0wm1x/hw";

  # inputs = {
  #   nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  # };

  outputs = { self }: {
    nixosModules =
      let import = path: path;
      in {
        oneplus-enchilada = import ./oneplus/enchilada;
      };
    # packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;
    # packages.x86_64-linux.default = self.packages.x86_64-linux.hello;
  };
}
