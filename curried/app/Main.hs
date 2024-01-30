module Main where

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

main :: IO ()
main = do
    let multTwoWithNine = multThree 9
    let multWithEighteen = multTwoWithNine 2
    print (multWithEighteen 10)