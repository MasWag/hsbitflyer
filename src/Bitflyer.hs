{-# LANGUAGE DeriveGeneric #-}

module Bitflyer
    ( getBoard
    ) where

import GHC.Generics

import qualified Data.Aeson as Aeson

type Price = Int
type Size = Double

data ProductCode = BTC_JPY | FX_BTC_JPY | ETH_BTC deriving Show

data BoardInfo = BoardInfo {
  midPrice :: Price,
  bids :: [(Price,Size)],
  asks :: [(Price,Size)]} deriving (Generic, Show)

instance Aeson.ToJSON BoardInfo
instance Aeson.FromJSON BoardInfo
               
getBoard :: ProductCode -> IO (Price, [(Price, Size)], [(Price, Size)])
getBoard _ = putStrLn "someFunc"
