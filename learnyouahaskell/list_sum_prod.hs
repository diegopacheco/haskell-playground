-- Play with lists and haskell and several functions such as 
-- sum, product and `elem`
main = do 
    let list  = [1,2,3,4,5,6]
    putStrLn("list   == " ++ show list)

    let sumo  = sum list
    putStrLn("sum      == " ++ show sumo)

    let producto  = product list
    putStrLn("product  == " ++ show producto)

    let has7 = 7 `elem` list
    putStrLn("has7     == " ++ show has7)

    let has6 = 6 `elem` list
    putStrLn("has6     == " ++ show has6)