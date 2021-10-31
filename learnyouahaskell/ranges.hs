-- play with ranges
main = do 
    let oneToFifity  = [1..50]
    putStrLn("1..50   == " ++ show oneToFifity)

    let aToZ  = ['a'..'z']
    putStrLn("a..z   == " ++ show aToZ)

    let ktoZ  = ['K'..'Z']
    putStrLn("K..Z   == " ++ show ktoZ)

    -- from 4 to 20 but steping 2 in 2
    let custom  = [2,4..20]
    putStrLn("custom == " ++ show custom)