module Main where

data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     } deriving (Eq, Show, Read)

getJohn :: Person
getJohn = Person {firstName = "Jhon", lastName = "Doe", age = 55}

readUnmarshall :: Person
readUnmarshall = read "Person {firstName =\"Michael\", lastName =\"Diamond\", age = 43}" :: Person

main :: IO ()
main = do
    putStrLn "Getjohn"
    print getJohn

    let x = getJohn
    let y = getJohn
    print (x==y)

    let person = readUnmarshall
    print person
