-- High Order Functions
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]  
zipWith' _ [] _ = []  
zipWith' _ _ [] = []  
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys  

-- usage: zplus result: [6,8,7,9]
zplus :: [Integer]
zplus = zipWith' (+) [4,2,5,6] [2,6,2,3]  

-- usage: zmax result: [7,3,2,5]
zmax :: [Integer]
zmax = zipWith' max [6,3,2,1] [7,3,1,5]  

-- usage zcon result: ["foo fighters","bar hoppers","baz aldrin"]"
zcon :: [[Char]]
zcon = zipWith' (++) ["foo ", "bar ", "baz "] ["fighters", "hoppers", "aldrin"]

-- usage zstar result: [2,4,6,8,10]
zstar :: [Integer]
zstar =  zipWith' (*) (replicate 5 2) [1..]