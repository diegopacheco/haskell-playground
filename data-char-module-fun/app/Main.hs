module Main where

import Data.Char 

cool :: Bool
cool = all isAlphaNum "bobby283"

up :: Bool
up = isUpper 'A'

main :: IO ()
main = do
    print ("is this all alphanum?  " ++ show cool)
    print ("is this all alphanum?  " ++ show (all isAlphaNum "bobby283@#"))
    print ("is A UPPER ?  " ++ show up)
