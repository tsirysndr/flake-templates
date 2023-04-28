{
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
          pkgs.nodejs
          # You can set the major version of Node.js to a specific one
          # pkgs.nodejs-19_x

          #pkgs.nodePackages.pnpm
          pkgs.yarn

          pkgs.nodePackages.typescript
          pkgs.nodePackages.typescript-language-server
         ];
      };
    });
}
