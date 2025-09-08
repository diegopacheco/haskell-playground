{-# LANGUAGE Arrows #-}
module Main where
import Control.Arrow

calculator :: ArrowChoice a => a (String, Int, Int) String
calculator = proc (op, x, y) -> do
    result <- case op of
        "+" -> returnA -< x + y
        "-" -> returnA -< x - y
        "*" -> returnA -< x * y
        "/" -> returnA -< if y /= 0 then x `div` y else 0
        _ -> returnA -< 0
    returnA -< "Result: " ++ show result

main :: IO ()
main = print (calculator ("+", 2, 3))
