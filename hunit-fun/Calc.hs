module Calc(
    sum',
    sub',
    mul',
    div'
 ) where 

sum' :: Num a => a -> a -> a
sum' x y = x + y

sub' :: Num a => a -> a -> a
sub' x y = x - y

mul' :: Num a => a -> a -> a
mul' x y = x * y

div' :: Fractional a => a -> a -> a
div' x y = x / y
