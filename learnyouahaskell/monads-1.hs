main :: IO()
main = do
    let x1 = return "WHAT" :: Maybe String
    let x2 = Just 9 >>= \x -> return (x*10) 
    let x3 = Nothing >>= \x -> return (x*10)  
    putStr(show x1 ++ "\n")
    putStr(show x2 ++ "\n")
    putStr(show x3 ++ "\n")