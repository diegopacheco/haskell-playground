data Person = 
    Person { firstName :: String  
            , lastName :: String  
            , age :: Int  
    } deriving (Eq, Read, Show)

main :: IO()
main = do
    let mike = getMike
    let adam = getAdam
    putStr("mike == adam ? " ++ show (mike == adam) ++ "\n")
    putStr("mike == mike ? " ++ show (mike == mike) ++ "\n")
    let p = strToType
    putStr(show p)

getMike :: Person
getMike =
    Person {firstName = "Michael", lastName = "Diamond", age = 43} 

getAdam :: Person
getAdam =
    Person {firstName = "Adam", lastName = "Horovitz", age = 41}  

strToType :: Person
strToType =
    read "Person {firstName =\"Michael\", lastName =\"Diamond\", age = 43}" 
    :: Person 