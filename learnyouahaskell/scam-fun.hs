-- scan (left and right) via scaml and scamr
-- its like folder by show you the intermediate accumulator values
-- usage: scanNow
main :: IO()
main = do
    putStr("foldl (+) 0 [1,2,3] == " ++ show (foldl (+) 0 [1,2,3]) ++ "\n")
    putStr("scanl (+) 0 [1,2,3] == " ++ show (scanl (+) 0 [1,2,3]) ++ "\n")