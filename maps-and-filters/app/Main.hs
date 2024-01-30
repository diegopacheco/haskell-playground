module Main where

mapItBaby :: [[Char]]
mapItBaby = map (++ "!") ["BIFF", "BANG", "POW"]

filterIt :: [Integer]
filterIt = filter (>3) [1,5,3,2,1,6,4,3,2,1]

getMeNotNull :: [[Integer]]
getMeNotNull = 
    let notNull x = not (null x) in 
        filter notNull [[1,2,3],[],[3,4,5],[2,2],[],[],[]]

main :: IO ()
main = do
    print mapItBaby
    print filterIt
    print (filter even [1..10])
    print getMeNotNull
