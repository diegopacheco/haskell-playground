-- module Calculator
-- usage import Calculator
--    Calculator.sum' 1 3
--    Calculator.sub  10 3
--    Calculator.mul  2 3
--    Calculator.div' 20 5
module Calculator  
( sum'
, sub
, mul
, div'  
) where  

sum' :: Int -> Int -> Int
sum' x y = x + y

sub :: Int -> Int -> Int
sub x y = x - y

mul :: Int -> Int -> Int
mul x y = x * y

div' :: Fractional a => a -> a -> a
div' x y = x / y