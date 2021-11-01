-- showme
-- function application $ to reduce the number of parentheses
-- usage: showme
showme :: Double
showme = 
    sum $ map sqrt [1..130]

showme2 :: Double
showme2 = 
    sqrt $ 3 + 4 + 9

showme3 :: Integer
showme3 =
    sum $ filter (> 10) $ map (*2) [2..10]