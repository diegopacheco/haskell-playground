-- mysum sum all elements in a list
-- usage: mysum [1,2,3,4]

-- v1 uses foldr
mysum :: (Num a) => [a] -> a
mysum xs = foldr (+) 0 xs

-- v2 uses pattern matching
mysum2 :: (Num a) => [a] -> a
mysum2 [] = 0
mysum2 (x:xs) = x + mysum xs