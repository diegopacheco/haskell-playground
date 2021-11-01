-- Lambda
-- usage lambdaFun -- result: [3,8,9,8,7]
lambdaFun :: [Integer]
lambdaFun = map (\(a,b) -> a + b) [(1,2),(3,5),(6,3),(2,6),(2,5)]

-- usage: lambdaFun2 -- result: [3,8,9,8,7]
lambdaFun2 :: [Integer]
lambdaFun2 = map (uncurry (+)) [(1,2),(3,5),(6,3),(2,6),(2,5)]

-- usage: lambZip -- result: [153.0,61.5,31.0,15.75,6.6]
lambZip :: [Double]
lambZip = zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1] [1,2,3,4,5] 

