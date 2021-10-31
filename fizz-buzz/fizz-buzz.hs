main :: IO ()
main = do
    putStr "What number do you want the Fizz-Buzz?"
    num <- getLine -- read user input as String
    putStr ("Generating Fizz-Buzz up to  " ++ num)
    let n = read num::Int -- Convert String into number
    let result = [fizzbuzz x | x <- [1..n]]
    putStrLn ("\n" ++ show result)

fizzbuzz :: (Integral a, Show a) => a -> [Char]
fizzbuzz n = case (mod n 3, mod n 5) of
    (0,0) -> "FizzBuzz"
    (0,_) -> "Fizz"
    (_,0) -> "Buzz"
    (_,_) -> show n