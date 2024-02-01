module Main where

import Data.Char 

cool :: Bool
cool = all isAlphaNum "bobby283"

up :: Bool
up = isUpper 'A'

digit :: Bool
digit = isDigit '9'

main :: IO ()
main = do
    print ("is this all alphanum?  " ++ show cool)
    print ("is this all alphanum?  " ++ show (all isAlphaNum "bobby283@#"))
    print ("is A UPPER ?  " ++ show up)
    print ("is 9 digit ?  " ++ show digit)
