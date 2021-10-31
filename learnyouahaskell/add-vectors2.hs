-- addVector2
-- Adds vector with list comprehension
-- usage: addVector2 [(1,2),(1,2)]
addVector2 :: Num a => [(a, a)] -> [a]
addVector2 xs = [a+b | (a,b) <- xs]