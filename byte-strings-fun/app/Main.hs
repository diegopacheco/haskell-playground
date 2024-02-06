module Main where

import qualified Data.ByteString.Lazy as B
import qualified Data.ByteString as S

main :: IO ()
main = do
    putStrLn "Byte String"
    let result = B.pack [99,97,110]
    print result
    print (B.pack [98..120])