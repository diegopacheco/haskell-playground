module Main where

--
-- Monads
-- 
-- monads are just applicative functors that support >>= (bind) 
-- Maybe, List are a monads
-- 
-- class Monad m where
--    return :: a -> m a
--    (>>=) :: m a -> (a -> m b) -> m b
--    (>>) :: m a -> m b -> m b
--    x >> y = x >>= \_ -> y
--    fail :: String -> m a
--    fail msg = error msg 
--
--  Every monad is an applicative functor, even if the class dont say so
--  
-- Laws:
--  Left identity  = return x >>= f is the same damn thing as f x
--  Right identity = m >>= return is no different than just m
--  Associativity  = Doing (m >>= f) >>= g is just like doing m >>= (\x -> f x >>= g)
-- 

foo :: Maybe String
foo = do
    x <- Just 3
    y <- Just "!"
    Just (show x ++ y)

main :: IO ()
main = do
    putStrLn "Monads Land... "
    print foo
