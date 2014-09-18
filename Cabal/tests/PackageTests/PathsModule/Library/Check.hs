module PackageTests.PathsModule.Library.Check (suite) where

import PackageTests.PackageTester
    (PackageSpec(..), assertBuildSucceeded, cabal_build, cabal_test)
import System.FilePath
import Test.HUnit

suite :: FilePath -> Test
suite ghcPath = TestCase $ do
    let spec = PackageSpec ("PackageTests" </> "PathsModule" </> "Library") ["--enable-tests"]
    result <- cabal_build spec ghcPath
    assertBuildSucceeded result
    result' <- cabal_test spec [] [] ghcPath
    assertBuildSucceeded result'
