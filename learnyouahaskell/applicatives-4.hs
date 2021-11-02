main :: IO String
main = do
    putStrLn "Enter a 2 strings: "
    let x = myAction
    x

myAction :: IO String  
myAction = (++) <$> getLine <*> getLine