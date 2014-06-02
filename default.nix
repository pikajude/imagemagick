{ cabal, HUnit, ImageMagick, liftedBase
, QuickCheck, resourcet, systemFilepath, testFramework
, testFrameworkHunit, testFrameworkQuickcheck2, text
, transformers, vector
}:

cabal.mkDerivation (self: {
  pname = "imagemagick";
  version = "0.0.3.5";
  sha256 = "cc7d7ad8a58d3d637d732a4c748e1bdfc41ba2308abb31776df7901ece49015d";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    resourcet systemFilepath text transformers vector
  ];
  testDepends = [
    HUnit ImageMagick liftedBase QuickCheck resourcet
    systemFilepath testFramework testFrameworkHunit
    testFrameworkQuickcheck2 text transformers vector
  ];
  doCheck = false;
  pkgconfigDepends = [ ImageMagick ];
  meta = {
    description = "bindings to imagemagick library";
    license = "unknown";
    platforms = self.ghc.meta.platforms;
  };
})
