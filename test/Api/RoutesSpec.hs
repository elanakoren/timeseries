{-# LANGUAGE OverloadedStrings, QuasiQuotes #-}

module Api.RoutesSpec where

import Test.Hspec
import Test.Hspec.Wai
import Test.Hspec.Wai.JSON
import Api.Routes
import Network.Wai (Application)
import Web.Scotty (scottyApp)

main :: IO ()
main = hspec spec

app :: IO Application
app = scottyApp $ routes

spec :: Spec
spec = with app $ do
  describe "GET /" $ do
    it "responds with 200" $ do
      get "/" `shouldRespondWith` 200
  describe "POST /datapoints" $ do
    it "responds with 204" $ do
      post "/datapoints" [json|[23, {foo: 42}]|] `shouldRespondWith` 204