data Person = 
    Person { firstName :: String  
            , lastName :: String  
            , age :: Int  
    } deriving (Eq)

main :: IO()
main = do
    let mike = getMike
    let adam = getAdam
    putStr("mike == adam ? " ++ show (mike == adam) ++ "\n")
    putStr("mike == mike ? " ++ show (mike == mike) ++ "\n")

getMike :: Person
getMike =
    Person {firstName = "Michael", lastName = "Diamond", age = 43} 

getAdam :: Person
getAdam =
    Person {firstName = "Adam", lastName = "Horovitz", age = 41}  
