{
  bun2nix,
  lib,
  makeWrapper,
  nodejs,
  ...
}:

bun2nix.mkDerivation {
  src = ./.;
  packageJson = ./package.json;

  bunDeps = bun2nix.fetchBunDeps {
    bunNix = ./bun.nix;
  };

  nativeBuildInputs = [
    makeWrapper
  ];

  buildPhase = ''
    runHook preBuild
    bun run build
    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall
    cp -r build $out/
    makeWrapper ${lib.getExe nodejs} $out/bin/omeduostuurcentenneef-web --append-flag "$out"
    runHook postInstall
  '';
}
