module Main where

quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = quicksort (filter (<=x) xs)
        biggerSorted = quicksort (filter (>x) xs) 
    in  smallerSorted ++ [x] ++ biggerSorted

main :: IO ()
main = do
    let list = [3,1,5,2,8,7,6,0]
    print (quicksort list)
