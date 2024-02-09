module Main where

newtype Stack a = Stack [a] deriving Show

empty :: Stack a
empty = Stack []

push :: a -> Stack a -> Stack a
push x (Stack xs)= Stack (x:xs)

pop :: Stack a -> (Maybe a, Stack a)
pop (Stack []) = (Nothing, Stack [])
pop (Stack (x:xs)) = (Just x, Stack xs)

main :: IO ()
main = do
    putStrLn "Stack in Haskell"
    let stack = push 1 $ push 2 $ push 3 empty
    print stack    