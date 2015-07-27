{-# LANGUAGE OverloadedStrings, QuasiQuotes #-}

module Api.RoutesSpec where

import Test.Hspec
import Test.Hspec.Wai
import Api.Routes
import Network.Wai (Application)
import qualified Web.Scotty as S

main :: IO ()
main = hspec spec

app :: IO Application
app = S.scottyApp $ routes

spec :: Spec
spec = with app $ do
  describe "GET /" $ do
    it "responds with 200" $ do
      get "/" `shouldRespondWith` 200