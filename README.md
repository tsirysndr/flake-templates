# Flake Templates

This is a collection of Nix flake templates I use in my personal projects.

## Install Nix

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

See [Nix installer](https://github.com/DeterminateSystems/nix-installer) for more details.

## Usage
```bash
nix flake init -t github:tsirysndr/flake-templates#minimal
```

## List of templates in this repository

- [android](./android) - A template for Android projects
- [bun](./bun) - A template for Bun projects
- [clojure](./clojure) - A template for Clojure projects
- [deno](./deno) - A template for Deno projects
- [elixir](./elixir) - A template for Elixir projects
- [gleam](./gleam) - A template for Gleam projects
- [go](./go) - A template for Go projects
- [haskell](./haskell) - A template for Haskell projects
- [java](./java) - A template for Java projects
- [minimal](./minimal) - A minimal template for Nix projects
- [node](./node) - A template for Node.js projects
- [python](./python) - A template for Python projects
- [scala](./scala) - A template for Scala projects
- [rust](./rust) - A template for Rust projects
- [zig](./zig) - A template for Zig projects