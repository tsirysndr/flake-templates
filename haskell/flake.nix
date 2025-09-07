{
  description = "A Nix-flake-based Haskell development environment";

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
          pkgs.ghc
          pkgs.cabal-install
          pkgs.stack
         ];
         shellHook = ''
         echo "Welcome to the Haskell development environment!"
         echo "You can now use ghci, cabal, stack, etc."
         echo "To exit, type exit"
         echo "To enter ghci, type ghci"
         echo "To enter cabal repl, type cabal repl"
         echo "To enter stack repl, type stack repl"
         '';
      };
    });
}
