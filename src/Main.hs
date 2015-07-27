{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty (scotty)
import Api.Routes (app')

main :: IO ()
main = scotty 3000 app'