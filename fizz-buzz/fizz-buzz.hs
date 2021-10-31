main :: IO ()
main = do
    putStr "What number do you want the Fizz-Buzz?"
    num <- getLine -- read user input as String
    let n = read num::Int -- Convert String into number
    let result = [fizzbuzz x | x <- [1..n]]
    putStr ("Generating Fizz-Buzz v1 up to  " ++ num)
    putStrLn ("\n" ++ show result)

    putStr ("Generating Fizz-Buzz v2 up to  " ++ num)
    let result2 = [fizzbuzz2 x | x <- [1..n]]
    putStrLn ("\n" ++ show result2)

    putStr ("Generating Fizz-Buzz v3 up to  " ++ num)
    let result3 = [fizzbuzz3 x | x <- [1..n]]
    putStrLn ("\n" ++ show result3)

-- V1 - Impl with Pattern Matching and case of expression
fizzbuzz :: (Integral a, Show a) => a -> [Char]
fizzbuzz n = case (mod n 3, mod n 5) of
    (0,0) -> "FizzBuzz"
    (0,_) -> "Fizz"
    (_,0) -> "Buzz"
    (_,_) -> show n

-- V2 - Impl with Pattern Matching and Advanced Guards
fizzbuzz2 :: (Integral a, Show a) => a -> [Char]
fizzbuzz2 n 
    | fizzBuzz = "FizzBuzz"
    | fizz = "Fizz"
    | buzz = "Buzz"
    | otherwise = show n
    where fizz = mod n 3 == 0
          buzz = mod n 5 == 0
          fizzBuzz = mod n 15 == 0

-- V3 - Impl with Pattern Matching and Guards (no Where)
fizzbuzz3 :: (Integral a, Show a) => a -> [Char]
fizzbuzz3 n 
    | mod n 15 == 0 = "FizzBuzz"
    | mod n 3  == 0 = "Fizz"
    | mod n 5  == 0 = "Buzz"
    | otherwise = show n