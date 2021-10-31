-- myCompare
-- compare 2 ORD and return GT, EQ or LT
-- usage: myCompare 1 1
-- usage: myCompare 1 2
-- usage: myCompare 3 2
-- usage: 3 `myCompare` 2  
myCompare :: (Ord a) => a -> a -> Ordering  
a `myCompare` b  
    | a > b     = GT  
    | a == b    = EQ  
    | otherwise = LT  