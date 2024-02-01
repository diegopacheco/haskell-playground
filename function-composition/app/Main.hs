module Main where

getData :: [Integer]
getData = map (\x -> negate (abs x)) [5,-3,-6,7,-3,2,-19,24]

doAdvanced :: [Integer]
doAdvanced = map (negate . sum . tail) [[1..5],[3..6],[1..7]]

oddSquareSum :: Integer
oddSquareSum = sum . takeWhile (<10000) . filter odd . map (^2) $ [1..]

main :: IO ()
main = do
    print getData
    print doAdvanced
    print oddSquareSum
