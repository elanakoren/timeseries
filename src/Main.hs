{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty (scotty)
import Api.Routes (routes)
import qualified Database.Persist.Postgresql as Db


connStr :: Db.ConnectionString
connStr =  "host=localhost dbname=test user=test password=test port=5432"

main :: IO ()
main = askescotty 3000 routes