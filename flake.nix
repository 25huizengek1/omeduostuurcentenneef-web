{
  description = "Generic devshell flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";

    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    bun2nix = {
      url = "github:baileyluTCD/bun2nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  nixConfig = {
    extra-substituters = [
      "https://cache.nixos.org"
      "https://cache.garnix.io"
    ];
    extra-trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
    ];
  };

  outputs =
    inputs@{ flake-parts, bun2nix, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];

      imports = [
        inputs.treefmt-nix.flakeModule
      ];

      perSystem =
        { pkgs, system, ... }:
        {
          treefmt = {
            programs.nixfmt.enable = true;

            settings.formatter.bun-format = {
              command = pkgs.lib.getExe pkgs.bun;
              options = [
                "run"
                "format"
              ];
              includes = [
                "*.svelte"
                "*.ts"
                "*.js"
                "*.css"
              ];
            };
          };

          devShells.default = pkgs.mkShell {
            packages = with pkgs; [
              nodejs_24
              bun
              bun2nix.packages.${system}.default
            ];

            env = {
            };

            shellHook = '''';
          };

          packages.default = pkgs.callPackage ./package.nix bun2nix.lib.${system};
        };

      flake = {
      };
    };
}
