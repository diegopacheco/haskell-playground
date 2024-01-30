module Main where

charName :: Char -> String
charName n
       | n `elem` ['a'..'z'] = "No"
       | n `elem` ['A'..'Z'] = "Yes"
       | otherwise = "No"

main :: IO ()
main = do 
    putStrLn ("D is up? " ++ (charName 'D'))
    putStrLn ("d is up? " ++ (charName 'D'))
