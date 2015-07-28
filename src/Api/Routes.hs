{-# LANGUAGE OverloadedStrings, QuasiQuotes #-}

module Api.Routes (routes) where

import Web.Scotty

routes :: ScottyM ()
routes = do
         get "/" $ do
           text "hello"