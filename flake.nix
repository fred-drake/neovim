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
          baseNixvimModule = {
            inherit pkgs;
            module = { pkgs, ... }: {
              imports = [ ./config ];
              extraPackages = with pkgs; [ sops ];
            };
            extraSpecialArgs = { };
          };
          rustNixvimModule = {
            inherit pkgs;
            module = { pkgs, ... }: {
              imports = [ ./config ./config/rust ];
              extraPackages = with pkgs; [
                sops
                rust-bin.stable.latest.default
              ];
            };
            extraSpecialArgs = { };
          };
          csharpNixvimModule = {
            inherit pkgs;
            module = { pkgs, ... }: {
              imports = [ ./config ./config/csharp ];
              extraPackages = with pkgs; [ sops ];
            };
            extraSpecialArgs = { };
          };
          pkgs = import inputs.nixpkgs {
            inherit system overlays;
            config.allowUnfree = true;
          };
          baseNvim = nixvim'.makeNixvimWithModule baseNixvimModule;
          rustNvim = nixvim'.makeNixvimWithModule rustNixvimModule;
          csharpNvim = nixvim'.makeNixvimWithModule csharpNixvimModule;
        in {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default =
              nixvimLib.check.mkTestDerivationFromNixvimModule baseNixvimModule;
          };
          packages = {
            # Lets you run `nix run .` to start nixvim
            default = baseNvim;
            # Lets you run `nix run .#rust` to start nixvim with Rust configuration
            rust = rustNvim;
            # Lets you run `nix run .#csharp` to start nixvim with C# configuration
            csharp = csharpNvim;
          };
        };
    };
}
