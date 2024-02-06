module Main where

import Control.Exception ( Exception, throw )
import Data.Data ( Typeable )

data MyException = OppsyException | MyBadException
   deriving (Show, Typeable)

instance Exception MyException

danger :: String -> IO ()
danger x = do
    if null x
    then throw OppsyException else putStrLn "oopsy daises"

main :: IO ()
main = do 
    putStrLn "Throwing some exceptions"
    danger "oh no"