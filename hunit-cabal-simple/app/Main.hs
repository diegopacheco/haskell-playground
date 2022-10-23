module Main where
import Add(addOne)

main :: IO ()
main = putStrLn ("Hello, Haskell! 1+1 == " ++ show(addOne 1))