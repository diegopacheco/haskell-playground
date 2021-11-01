data Car = Car {
    company :: String, 
    model :: String, 
    year :: Int
} deriving (Show)  

main :: IO()
main = do
    let car = getMustang
    putStr(show car ++ "\n")

getMustang :: Car
getMustang = 
    Car { 
        company="Ford", 
        model="Mustang", 
        year=1967
    }