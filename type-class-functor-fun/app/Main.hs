{-# LANGUAGE InstanceSigs #-}
module Main where
import qualified Data.Either as Main

--
-- Functor: All things that can be mapped over(map).
--
-- class Functor f where
--  fmap :: (a -> b) -> f a -> f b
--
-- fmap is just a map
-- ghci> fmap (*2) [1..3] 
-- [2,4,6]

data OneOrAnother a = Yes a | No a deriving(Show)
instance Functor OneOrAnother where
    fmap f (No x) = No (f x)
    fmap f (Yes x) = Yes (f x)

main :: IO ()
main = do
    putStrLn "Functor run for your lifes :-) "
    print (fmap (*2) [1..3] )

    print "fmap also works with Monads(Just|Maybe)"
    print (fmap (++ " HEY Jude") (Just "Don't be Afraid") )

    let ok = Yes 10
    print ok
    print (fmap (+1) (Yes 10))


