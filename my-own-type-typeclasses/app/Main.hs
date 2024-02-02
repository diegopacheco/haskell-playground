module Main where

data SimplePerson = SimplePerson String String String Int String
    deriving Show

firstPerson :: SimplePerson
firstPerson = SimplePerson "John" "Doe" "jd@jd.com" 60 "Engineer"

main :: IO ()
main = do
    print firstPerson
