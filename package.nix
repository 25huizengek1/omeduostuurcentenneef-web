{
  mkBunDerivation,
  lib,
  makeWrapper,
  nodejs_24,
  rsync,
  bun,
  ...
}:

mkBunDerivation {
  src = ./.;
  bunNix = ./bun.nix;
  packageJson = ./package.json;

  nativeBuildInputs = [
    # TODO: remove rsync and bun when https://github.com/baileyluTCD/bun2nix/pull/37 gets merged
    makeWrapper
    rsync
    bun
  ];

  buildPhase = ''
    runHook preBuild
    bun run build
    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall
    cp -r build $out/
    makeWrapper ${lib.getExe nodejs_24} $out/bin/omeduostuurcentenneef-web --append-flag "$out"
    runHook postInstall
  '';
}
