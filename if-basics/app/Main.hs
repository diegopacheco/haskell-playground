{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant if" #-}
module Main where

isOdd :: Integer -> Bool
isOdd n = do
    if n `mod` 2 == 0
    then True
    else False

main :: IO ()
main = do
    putStrLn "is 40 odd? "
    print (isOdd 40)
