import Data.Monoid  

main :: IO()
main = do
    let x1 = lengthCompare "zen" "ants" -- LT
    let x2 = lengthCompare "zen" "ant"  -- GT
    putStr(show x1 ++ " " ++ show x2 ++ "\n")    

lengthCompare :: String -> String -> Ordering  
lengthCompare x y = (length x `compare` length y) `mappend`  
                    (x `compare` y)  

