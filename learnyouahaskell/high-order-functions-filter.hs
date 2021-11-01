-- High Order Functions
-- Filter takes a predicate and a list and 
--  returns a list of all the elements that satisfy the predicate
-- usage myFilter even [1..10]
-- usage myFilter odd [1..10]
-- usage myFilter (>3) [1,5,3,2,1,6,4,3,2,1]  
-- usage myFilter (==3) [1,2,3,4,5]  
myFilter :: (a -> Bool) -> [a] -> [a]  
myFilter _ [] = []  
myFilter p (x:xs)   
    | p x       = x : myFilter p xs  
    | otherwise = myFilter p xs  
