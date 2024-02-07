module Main where

--
-- To be an applicative need 2 methods: pure and <*>
--
-- class (Functor f) => Applicative f where
--    pure :: a -> f a
--    (<*>) :: f (a -> b) -> f a -> f b
--
-- This is just de definition, it need to be implemented
-- Here is one impl:
--
-- instance Applicative Maybe where
--    pure = Just
--    Nothing <*> _ = Nothing
--    (Just f) <*> something = fmap f something
--

compute :: Maybe Integer
compute = Just (+3) <*> Just 9

theSameAs :: Maybe Integer
theSameAs = fmap (+3) $ Just 9 

main :: IO ()
main = do 
    putStrLn "Functor-applicatives in action "
    print compute
    print theSameAs
