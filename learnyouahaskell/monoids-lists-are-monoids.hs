 main :: IO()
 main = do
     let x = [1,2,3] `mappend` [4,5,6]
     putStr(show x)  