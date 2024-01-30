module Main where
import GHC.Base (Any)

getZip :: [(Integer, String)]
getZip = zip [1..] ["apple", "orange", "cherry", "mango"]

main :: IO ()
main = print getZip
