{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty (scotty)
import Api.Routes (routes)

main :: IO ()
main = scotty 3000 routes