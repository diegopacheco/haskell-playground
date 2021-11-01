import System.IO  
  
main = do  
    handle <- openFile "data.txt" ReadMode  
    contents <- hGetContents handle  
    putStr contents  
    hClose handle  