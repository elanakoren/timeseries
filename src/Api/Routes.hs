{-# LANGUAGE OverloadedStrings, QuasiQuotes #-}

module Api.Routes (app, app') where

import           Network.Wai (Application)
import qualified Web.Scotty as S

app' :: S.ScottyM ()
app' = do
         S.get "/" $ do
           S.text "hello"

app :: IO Application
app = S.scottyApp $ app'