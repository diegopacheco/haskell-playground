 main :: IO()
 main = do
     let x = [1,2,3] `mappend` [4,5,6]
     putStr(show x)  

     let result = mconcat [[1,2],[3,6],[9]]
     putStr(show result)  

     let z = "pang" `mappend` mempty 
     putStr(show z)  