module Main where

import Control.Monad.Cont (Cont, runCont, callCC)

factorial :: Int -> Cont r Int
factorial n = do
    if n == 0 
        then return 1
        else do
            prev <- factorial (n - 1)
            return (n * prev)

myCallCC :: Cont r Int
myCallCC = callCC $ \escape -> do
    _ <- return 10
    escape 5  -- force computation to return 5
    return 20

main :: IO ()
main = runCont myCallCC print
