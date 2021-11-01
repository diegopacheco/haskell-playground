-- usage: oddSquareSum -- result: 166650
oddSquareSum :: Integer  
oddSquareSum =   
    let oddSquares = filter odd $ map (^2) [1..]  
        belowLimit = takeWhile (<10000) oddSquares  
    in  sum belowLimit  