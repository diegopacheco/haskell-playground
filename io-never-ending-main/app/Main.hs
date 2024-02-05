module Main where

main :: IO()
main = do 
    putStrLn "Type some word to be reversed (enter to quiet)"
    line <- getLine
    if null line
        then return ()
        else do
            putStrLn $ reverseWords line
            main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words