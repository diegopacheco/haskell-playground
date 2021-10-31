-- High Order functions 
--  are functions that take other functions as arguments
--  or return functions as results or both

-- usage multThree 3 3 3 
multThree :: (Num a) => a -> a -> a -> a  
multThree x y z = x * y * z  

-- usage multTwoWithNine 3 2
multTwoWithNine :: Integer -> Integer -> Integer
multTwoWithNine = multThree 9  

-- usage: multWithEighteen 10
multWithEighteen :: Integer -> Integer
multWithEighteen = multTwoWithNine 2