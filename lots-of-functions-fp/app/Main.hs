module Main where

maximum' :: (Ord a) => [a] -> a
maximum' = foldr1 (\x acc -> if x > acc then x else acc)

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

product' :: (Num a) => [a] -> a
product' = foldr1 (*)

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x acc -> if p x then x : acc else acc) []

head' :: [a] -> a
head' = foldr1 (\x _ -> x)

last' :: [a] -> a
last' = foldl1 (\_ x -> x)

main :: IO ()
main = do
    print (maximum' [10, 30])                -- 30
    print (reverse' [1, 2, 3])               -- [3,2,1]
    print (product' [1, 2, 3])               -- 6
    print (filter' (>=3) [1, 2, 3])          -- [3]
    print (head' [300, 200, 100])            -- 300 
    print (last' [300, 200, 100])            -- 100
