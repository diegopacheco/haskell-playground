-- Play with lists and haskell and several functions such as 
-- head, tail, init, last, reverse, length, null
main = do 
    let list  = [1,2,3,4,5,6]
    let first = head list
    let lasto = last list
    let tailo = tail list
    let inito = init list
    let reverso = reverse list
    let lengtho = length list
    let null1 = null list
    let null2 = null []
    putStrLn("First:[" ++ show first ++ 
                       "] Last:[" ++ show lasto ++ "" ++
                       "] Init:" ++ show inito ++ "" ++
                       "] Reverse:" ++ show reverso ++ "" ++
                       "] Length:[" ++ show lengtho ++ "]" ++
                       "] Null1:[" ++ show null1 ++ "]" ++
                       "] Null2:[" ++ show null2 ++ "]" ++
                       " Tail:" ++ show tailo ++ ""
            )   