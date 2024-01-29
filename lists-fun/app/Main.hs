module Main where

concatLists :: [Integer]
concatLists = [1,2,3,4] ++ [9,10,11,12]

addList :: [Integer]
addList = 100 : [9,10,11,12]

getElmByIndex :: Integer
getElmByIndex = [1,2,3,4,5,6,7,8,9,10] !! 6

headAndTail :: [Integer]
headAndTail = do 
        let list = [1,2,3,4,5,6,7,8]
        let headElm = head list
        let tailElm = last list
        [headElm, tailElm]

main :: IO ()
main = do 
        putStrLn "Hello, Haskell!"
        print concatLists           -- [1,2,3,4,9,10,11,12] 
        print addList               -- [100,9,10,11,12]
        print getElmByIndex         -- 7
        print headAndTail           -- [1, 8]
