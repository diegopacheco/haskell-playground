import System.Environment  
import System.IO  
import System.IO.Error  
import Control.Exception (catch)
  
main :: IO ()
main = toTry `catch` handler  
              
toTry :: IO ()  
toTry = do (fileName:_) <- getArgs  
           contents <- readFile fileName  
           putStrLn $ "The file has " ++ show (length (lines contents)) ++ " lines!"  
  
handler :: IOError -> IO ()  
handler e  
    | isDoesNotExistError e = putStrLn "The file doesn't exist!"  
    | isUserError e = putStrLn "User error! try to fix it!"
    | otherwise = ioError e  