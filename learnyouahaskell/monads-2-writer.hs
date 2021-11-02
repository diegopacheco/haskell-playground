import Control.Monad.Writer
      
logNumber :: Int -> Writer [String] Int  
logNumber x = writer (x, ["Got number: " ++ show x])  -- here

-- or can use a do-block to do the same thing, and clearly separate the logging from the value
logNumber2 :: Int -> Writer [String] Int  
logNumber2 x = do
    tell ["Got number: " ++ show x]
    return x            
      
multWithLog :: Writer [String] Int  
multWithLog = do  
    a <- logNumber 3  
    b <- logNumber 5
    tell ["multiplying " ++ show a ++ " and " ++ show b ]
    return (a*b)
    
main :: IO ()
main = print $ runWriter multWithLog -- (15,["Got number: 3","Got number: 5","multiplying 3 and 5"])