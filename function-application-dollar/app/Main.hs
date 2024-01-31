module Main where

main :: IO ()
main = do
    let r1 = sum (map sqrt [1..130])   -- left precedence
    print r1
    print "*******"

    let r2 = sum $ map sqrt [1..130] -- right precedence with function application     
    print r2                         -- less parethesis

    print "*******"
    let r3 = sum (filter (> 10) (map (*2) [2..10])) 
    print r3
    let r4 = sum $ filter (> 10) $ map (*2) [2..10]
    print r4