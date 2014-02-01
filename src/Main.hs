{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.ByteString.Lazy.Char8 as Bz
import           Data.ByteString.Lazy.Search (indices, nonOverlappingIndices)
import           Data.Monoid

main :: IO ()
main = Bz.interact go
  where
    go x = Bz.unlines ["DOS: " <> Bz.pack (show dosCount), "Unix: " <> Bz.pack (show unixCount)]
      where dosCount  = length $ "\r\n" `nonOverlappingIndices` x
            unixCount = length $ "\r"   `indices` x
