module Main where

import Paths_PathsModule (getDataDir)
import Test.HUnit
import Data.List (isSuffixOf)

main :: IO ()
main = do
    dataDir <- getDataDir
    assertBool "Paths_pkgname.dataDir is full path of data-dir in .cabal" $
      "data" `isSuffixOf` dataDir
