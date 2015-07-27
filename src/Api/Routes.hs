{-# LANGUAGE OverloadedStrings, QuasiQuotes #-}

module Api.Routes
(
    app
) where

import           Network.Wai (Application)
import qualified Web.Scotty as S

app :: IO Application
app = S.scottyApp $ do
  S.get "/" $ do
    S.text "hello"