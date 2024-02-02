module Main where

--
-- Without Records
--
data Person = Person String String Int Float String String deriving (Show)

firstName :: Person -> String
firstName (Person firstname _ _ _ _ _) = firstname

lastName :: Person -> String
lastName (Person _ lastname _ _ _ _) = lastname

age :: Person -> Int
age (Person _ _ age _ _ _) = age

height :: Person -> Float
height (Person _ _ _ height _ _) = height

phoneNumber :: Person -> String
phoneNumber (Person _ _ _ _ number _) = number

flavor :: Person -> String
flavor (Person _ _ _ _ _ flavor) = flavor

--
-- Records
--
data PersonRecord = PersonRecord { fist :: String
                     , lst :: String
                     , ag :: Int
                     , he :: Float
                     , phone :: String
                     , flv :: String
                     } deriving (Show)

main :: IO ()
main = do 
    --
    -- without records
    --
    putStrLn "Without Records"
    let guy = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"
    print (firstName guy)
    print (lastName guy)
    print (age guy)

    --
    -- now with records (my poor names is just to avoid conflicts)
    --
    let dude = PersonRecord "dude" "haskeller" 42 6.0 "333-444-3322" "vanila"
    print (fist dude)
    print (lst dude)
    print (phone dude)
