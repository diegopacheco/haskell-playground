module Main where

data Car a b c = Car { company :: a
                     , model :: b
                     , year :: c 
                     } deriving (Show)

tellCar :: Show a => Car [Char] [Char] a -> [Char]
tellCar (Car {company = c, model = m, year = y}) = 
    "This " ++ c ++ " " ++ m ++ " was made in " ++ show y

main :: IO ()
main = do
    let mustang = Car {company="Ford", model="Mustang", year=1967}
    print (tellCar mustang)
