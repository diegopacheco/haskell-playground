module Main where

import Control.Monad ( forever )
import Data.Char ( toUpper )

main :: IO()
main = forever $ do
    putStr "Give me some input(will be transformed to uppercase): "
    l <- getLine
    putStrLn $ map toUpper l