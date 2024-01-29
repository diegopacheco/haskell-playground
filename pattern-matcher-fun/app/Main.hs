module Main where

import Data.Maybe (fromMaybe)

firstElem :: [Integer] -> Maybe Integer
firstElem xs = case xs of
  (x:_) -> Just x
  [] -> Nothing

main :: IO ()
main =  do 
    let list  = [100,200,300]
    let first = firstElem list
    let (Just val) = first
    putStrLn (show val)

