import System.Environment  
import System.IO  
import System.IO.Error  
import Control.Exception (catch)
  
main :: IO()
main = do 
    toTry `catch` handler  
    putStr "FIN."
              
toTry :: IO ()  
toTry = do (fileName:_) <- getArgs  
           contents <- readFile fileName  
           putStrLn $ "The file has " ++ show (length (lines contents)) ++ " lines!"  
  
handler :: IOError -> IO ()  
handler e = putStrLn "Whoops, had some trouble!"  