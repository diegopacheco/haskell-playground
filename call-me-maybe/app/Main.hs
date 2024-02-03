module Main where

data Maybe a = Nothing | Just a deriving(Show)

main :: IO ()
main = do
    print (Main.Just "Hahahaha vou te dizer!")
    print (Main.Just 89)
