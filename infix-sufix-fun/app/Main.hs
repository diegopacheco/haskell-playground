module Main where
import Data.List ( isInfixOf, isPrefixOf, isSuffixOf )

getIn :: Bool
getIn = "cat" `isInfixOf` "im a cat burglar"

getPrefix :: Bool
getPrefix = "hey" `isPrefixOf` "hey there!"

getSufix :: Bool
getSufix = "there!" `isSuffixOf` "oh hey there!"

main :: IO ()
main = do
    putStrLn "cat infix in a cat burglar == "
    print getIn
    putStrLn "hey prefix in hey there! == "
    print getPrefix
    putStrLn "there! sufix oh hey there! == "
    print getSufix
