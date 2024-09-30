{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { nixvim, flake-parts, rust-overlay, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems =
        [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];

      perSystem = { system, ... }:
        let
          overlays = [ (import rust-overlay) ];
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit pkgs;
            module = { pkgs, ... }: {
              imports = [ ./config ];
              extraPackages = with pkgs; [
                sops
                rust-bin.stable.latest.default
              ];
            };
            # You can use `extraSpecialArgs` to pass additional arguments to your module files
            extraSpecialArgs = {
              # inherit (inputs) foo;
            };
          };
          pkgs = import inputs.nixpkgs {
            inherit system overlays;
            config.allowUnfree = true;
          };
          nvim = nixvim'.makeNixvimWithModule nixvimModule;
        in {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default =
              nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          };

          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nvim;
          };
        };
    };
}
