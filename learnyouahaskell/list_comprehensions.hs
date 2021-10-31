-- Play with lists and haskell and several functions such as 
-- Lists Comprenhensions
main = do 
    let result = [x*2 | x <- [1..10]]
    putStrLn("result == " ++ show result) 

    -- goes from 1..10 multiply by 2 when x*2 >=2
    let result2 =  [x*2 | x <- [1..10], x*2 >= 12]  
    putStrLn("result2 == " ++ show result2) 