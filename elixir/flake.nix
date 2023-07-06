{
  description = "A Nix-flake-based Elixir development environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-23.05";
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
          pkgs.elixir
          pkgs.elixir-ls
          pkgs.erlang
         ];
         shellHook = ''
           export MIX_HOME=$PWD/.mix
           export HEX_HOME=$PWD/.hex
           echo 'Elixir version:'
           elixir --version
           echo 'Erlang version:'
           erl -version
           echo 'Welcome to Elixir shell!'
           echo 'Run `iex` to start the interactive shell'
          '';
      };
    });
}
