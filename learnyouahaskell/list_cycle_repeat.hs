-- Play with lists and haskell and several functions such as 
-- cycle and repeat
main = do 
    let list  = [1,2,3]
    putStrLn("list   == " ++ show list)

    let ten = take 10 (cycle [1,2,3])  
    putStrLn("ten    == " ++ show ten)

    let batman = take 31 (cycle "NaN ")
    putStrLn("Batman! " ++ show batman ++ " Batman!")