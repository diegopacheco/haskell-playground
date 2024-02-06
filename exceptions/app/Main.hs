module Main where
import Control.Exception
    ( evaluate, tryJust, ArithException(DivideByZero) )

main :: IO ()
main = do
    result <- tryJust selectDivByZero (evaluate $ 5 `div` 0)
    case result of
        Left what -> putStrLn $ "Division by " ++ what
        Right val -> putStrLn $ "The answer was: " ++ show val
  where
    selectDivByZero :: ArithException -> Maybe String
    selectDivByZero DivideByZero = Just "zero"
    selectDivByZero _ = Nothing