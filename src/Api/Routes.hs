{-# LANGUAGE OverloadedStrings, QuasiQuotes #-}

module Api.Routes (routes) where

import qualified Web.Scotty as S

routes :: S.ScottyM ()
routes = do
         S.get "/" $ do
           S.text "hello"