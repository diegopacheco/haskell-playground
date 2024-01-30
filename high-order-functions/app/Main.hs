module Main where

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

main = print (applyTwice (+3) 10)
main :: IO ()
