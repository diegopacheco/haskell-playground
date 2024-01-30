module Main where

mymap :: (a -> b) -> [a] -> [b]
mymap _ [] = []
mymap f (x:xs) = f x : mymap f xs

getResult :: [Integer]
getResult = mymap (+3) [1,5,3,1,6]

main :: IO ()
main = print getResult
