module Main where

type MyString = [Char]
type PhoneBook = [(String,String)]

getS :: MyString
getS = "OK! It works"

getBook :: PhoneBook
getBook =    
    [("betty","555-2938")   
    ,("bonnie","452-2928")   
    ,("patsy","493-2928")   
    ,("lucille","205-2928")   
    ,("wendy","939-8282")   
    ,("penny","853-2492")   
    ]

main :: IO ()
main = do
    putStrLn ("MyString in action" ++ getS)
    print getBook
