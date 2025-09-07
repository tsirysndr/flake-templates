{
  description = "A Minimal Nix-flake-based development environment";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-25.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem
    (system: let
      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      packages = flake-utils.lib.flattenTree {
        inherit (pkgs) hello;
      };

      # devShells.default = pkgs.mkShell {
      #   buildInputs = [
      #   ];
      # };
    });
}
