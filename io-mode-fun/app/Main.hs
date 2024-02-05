module Main where

import System.IO   

main :: IO ()  
main = do   
    withFile "data.txt" ReadMode (\handle -> do
        contents <- hGetContents handle   
        putStr contents)

