module Main where

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

sumV2 :: (Num a) => [a] -> a
sumV2 = foldl (+) 0

main :: IO ()
main = do
    print (sum'  [1,2,3])
    print (sumV2 [1,2,3])
