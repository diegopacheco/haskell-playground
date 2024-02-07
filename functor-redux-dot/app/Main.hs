module Main where

--
-- Same as: (*3) `fmap` (+100) $ 1
--
unitNum :: Integer
unitNum = (*3) . (+100) $ 1

main :: IO ()
main = do
    putStrLn "My unit is "
    print unitNum
