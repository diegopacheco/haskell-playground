main :: IO()
main = do
    let x = Just (+3) <*> Just 9
    putStr("Just (+3) <*> Just 9 = " ++ show x ++ "\n")

    let z = Just (++"hahah") <*> Nothing
    putStr("Just (++\"hahah\") <*> Nothing = " ++ show z ++ "\n")

    let y = pure (+) <*> Just 3 <*> Just 5
    putStr("pure (+) <*> Just 3 <*> Just 5 = " ++ show y ++ "\n")