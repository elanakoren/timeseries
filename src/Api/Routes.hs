{-# LANGUAGE OverloadedStrings, QuasiQuotes #-}

module Api.Routes (routes) where

import Web.Scotty
import Network.HTTP.Types.Status

routes :: ScottyM ()
routes = do
         get "/" $ do
           text "hello"
         post "/datapoints" $ do
           a <- body
           status status204
         get "/datapoints/query" $ do
            status status204
