{-# LANGUAGE OverloadedStrings, QuasiQuotes #-}

module Api.RoutesSpec where

import Test.Hspec
import Test.Hspec.Wai
import Api.Routes
--import SpecHelper

main :: IO ()
main = hspec spec

spec :: Spec
spec = with app $ do
  describe "GET /" $ do
    it "responds with 200" $ do
      get "/" `shouldRespondWith` 200