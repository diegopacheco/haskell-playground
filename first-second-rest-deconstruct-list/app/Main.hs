module Main where

--
-- Generates a list from a range 1 to 10
--
getList :: [Integer]
getList = [1..10]

--
-- sum the whole list - like a reduce
--
sumList :: [Integer] -> Integer
sumList [] = 0
sumList (x:xs) = x + sumList xs

--
-- Deconstruct a list with let (a:b:c) where
-- a is first element, b second, c is a rest with the rest
-- ++ [sumList rest] concats the Integer result with the
-- main list here [first + 1 , second + 1]    
--
deconstruct :: [Integer] -> [Integer]
deconstruct list = do
    let (first:second:rest) = list
    let result = [first + 1 , second + 1] ++ [sumList rest]
    result

main :: IO ()
main = do
    let list = getList
    print list
    print (deconstruct list)