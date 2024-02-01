module Main where

import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

getUnique :: (Eq a) => [a] -> [a]
getUnique = nub

join :: [Char]
join = intercalate " " ["hey","there","guys"]

cool :: [Char]
cool = intersperse '.' "DRE"

concatFun :: [Char]
concatFun = concat ["easy","peasy","lemon","sequeeze"]

main :: IO ()
main = do
    let nums = [1, 2, 2, 2, 3, 5, 1, 1, 1]
    let countUnique = numUniques nums
    print countUnique
    print (getUnique nums)
    print cool
    print join
    print concatFun
