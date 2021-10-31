-- main
-- Program that ask the user for a number and prints the time time of the num.
-- usage main 5
main :: IO ()
main = do
    putStr "What number do you want the time table? i.e 1..10 ?"
    num <- getLine -- read user input as String
    putStr ("Generating time table of " ++ num)
    let n = read num::Int -- Convert String into number
    let tt = timeTable n
    putStrLn ("\n" ++ show tt)

timeTable :: (Num a, Enum a) => a -> [a]
timeTable i = [i*x | x <- [1..10]]