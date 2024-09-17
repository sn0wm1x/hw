<br />
<div align="center">
<img src="https://github.com/sn0wm1x.png" alt="sn0wm1x" />
</div>

<h1 align="center">SN0WM1X Hardware</h1>

## About

WIP, which may eventually be contributed to NixOS Hardware.

## Profiles

- [OnePlus 6 (enchilada)](/oneplus/enchilada/)

## Usage

```nix
{
  description = "NixOS configuration with flakes";
  inputs.sn0wm1x-hardware.url = "github:sn0wm1x/hw";

  outputs = { self, nixpkgs, sn0wm1x-hardware }: {
    # replace <your-hostname> with your actual hostname
    nixosConfigurations.<your-hostname> = nixpkgs.lib.nixosSystem {
      # ...
      modules = [
        # ...
        # add your model from this list: https://github.com/sn0wm1x/hw/blob/main/flake.nix
        sn0wm1x-hardware.nixosModules.oneplus-enchilada
      ];
    };
  };
}
```