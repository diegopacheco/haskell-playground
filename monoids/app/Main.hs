module Main where

-- Monoids
--
-- class Monoid m where
--    mempty :: m
--    mappend :: m -> m -> m
--    mconcat :: [m] -> m
--    mconcat = foldr mappend mempty
--
-- Monoids have associativity property
-- methods:
--  * mempty : ID function creates empty monoid
--  * mappend: Bad name, is not apped is apply 2 monoids get a thrid
--  * mconcat: Takes a list of monoid and reduce to one value   
--
-- Lists, Bool, Maybe, Ordering(LT, EQ and GT) are Monoids
--

main :: IO ()
main = do
    putStrLn "Monoid land"
    print ([1,2,3] `mappend` [4,5,6])
    print ("pang" `mappend` mempty)
    print (mconcat [[1,2],[3,6],[9]])

    print (1 `compare` 2)
    print (2 `compare` 2)
    print (3 `compare` 2)
