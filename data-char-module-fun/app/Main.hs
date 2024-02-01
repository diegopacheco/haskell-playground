module Main where

import Data.Char 

cool :: Bool
cool = all isAlphaNum "bobby283"

up :: Bool
up = isUpper 'A'

digit :: Bool
digit = isDigit '9'

useful :: [String]
useful = words "hey guys its me"

lookAtMe :: [GeneralCategory]
lookAtMe = [generalCategory ' ', generalCategory 'A', generalCategory '9', generalCategory '.']

main :: IO ()
main = do
    print ("is this all alphanum?  " ++ show cool)
    print ("is this all alphanum?  " ++ show (all isAlphaNum "bobby283@#"))
    print ("is A UPPER ?  " ++ show up)
    print ("is 9 digit ?  " ++ show digit)
    print useful
    print lookAtMe
