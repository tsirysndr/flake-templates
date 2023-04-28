{
  description = "A collection of flake templates";

  outputs = { self }: {

    templates = {

      bun = {
        path = ./bun;
        description = "A template for a Bun project";
      };

      deno = {
        path = ./deno;
        description = "A template for a Deno project";
      };

      gleam = {
        path = ./gleam;
        description = "A template for a Gleam project";
      };

      go = {
        path = ./go;
        description = "A template for a Go project";
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

      zig = {
        path = ./zig;
        description = "A template for a Zig project";
      };

    };

    defaultTemplate = self.templates.minimal;

  };
}