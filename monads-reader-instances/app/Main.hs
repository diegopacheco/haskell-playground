{-# OPTIONS_GHC -Wno-deprecations #-}
module Main where
import Control.Monad.Instances ()

addStuff :: Int -> Int
addStuff = do
    a <- (*2)
    b <- (+10)
    return (a+b)

main :: IO ()
main = do 
    putStrLn "Monads Reader Instances"
    print $ addStuff 2
