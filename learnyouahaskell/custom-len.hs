-- custom length implementation
-- length' [1] = 1 
-- length' [1,3,4] = 3
length' :: Num a => [t] -> a
length' xs = sum [1 | _ <- xs]