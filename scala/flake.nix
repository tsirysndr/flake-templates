{
  description = "A Nix-flake-based Scala development environment";

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
      devShells.default = pkgs.mkShell {
         buildInputs = [
           pkgs.openjdk11
           pkgs.sbt
         ];
         shellHook = ''
           echo "Welcome to sbt"
           echo "To start sbt, run 'sbt' in the shell"
         '';
      };
    });
}
