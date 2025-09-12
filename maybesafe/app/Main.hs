module Main where

safeDivide :: Double -> Double -> Maybe Double
safeDivide _ 0 = Nothing
safeDivide x y = Just (x / y)

calculateRatio :: Double -> Double -> Double -> Maybe Double
calculateRatio a b c = do
    x <- safeDivide a b
    y <- safeDivide x c
    return y

main :: IO ()
main = print(calculateRatio 3.5 3.5 3.5)
