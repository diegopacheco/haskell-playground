-- Play with lists and haskell and several functions such as 
-- take, drop, maximun, minimun
main = do 
    let list  = [1,2,3,4,5,6]
    putStrLn("list   == " ++ show list)

    let takeResult =  take 3 list
    putStrLn("take 3 == " ++ show takeResult ++ " ")

    let takeResultZero =  take 0 list
    putStrLn("take 0 == " ++ show takeResultZero ++ " ")

    let dropResult =  drop 3 list
    putStrLn("drop 3 == " ++ show dropResult ++ " ")
    putStrLn("list   == " ++ show list ++ " ")

    let maxResult =  maximum list
    putStrLn("maximun == " ++ show maxResult ++ " ")

    let minResult =  minimum list
    putStrLn("minimum == " ++ show minResult ++ " ")