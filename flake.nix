{
  description = "A collection of flake templates";

  outputs = { self }: {

    templates = {

      android = {
        path = ./android;
        description = "A template for an Android project";
      };

      bun = {
        path = ./bun;
        description = "A template for a Bun project";
      };

      clojure = {
        path = ./clojure;
        description = "A template for a Clojure project";
      };

      deno = {
        path = ./deno;
        description = "A template for a Deno project";
      };

      elixir = {
        path = ./elixir;
        description = "A template for an Elixir project";
      };

      gleam = {
        path = ./gleam;
        description = "A template for a Gleam project";
      };

      go = {
        path = ./go;
        description = "A template for a Go project";
      };
      
      haskell = {
        path = ./haskell;
        description = "A template for a Haskell project";
      };

      minimal = {
        path = ./minimal;
        description = "A minimal template";
      };

      node = {
        path = ./node;
        description = "A template for a Node.js project";
      };

      python = {
        path = ./python;
        description = "Python template, using poetry2nix";
      };

      rust = {
        path = ./rust;
        description = "Rust template, using Naersk";
      };

      scala = {
        path = ./scala;
        description = "A template for a Scala project";
      };

      zig = {
        path = ./zig;
        description = "A template for a Zig project";
      };

    };

    defaultTemplate = self.templates.minimal;

  };
}