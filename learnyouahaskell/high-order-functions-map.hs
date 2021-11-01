-- High Order Functions 
-- map function calls a function on each element of a list and returns a new list
-- usage myMap (+1) [1,2,3]
-- usage myMap (++ "!") ["BIFF", "BANG", "POW"] 
-- usage myMap (replicate 3) [3..6]
myMap :: (a -> b) -> [a] -> [b]  
myMap _ [] = []  
myMap f (x:xs) = f x : myMap f xs  