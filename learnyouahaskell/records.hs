data Person = 
    Person String String Int Float String String 
    deriving (Show)  

firstName :: Person -> String  
firstName (Person firstname _ _ _ _ _) = firstname  
  
lastName :: Person -> String  
lastName (Person _ lastname _ _ _ _) = lastname  

main :: IO()
main = do
    let p = getMe 
    putStr(show p ++ "\n")

    let fullName = firstName p ++ " " ++ lastName p
    putStr("Person full name: " ++ show fullName ++ "\n")

getMe :: Person
getMe = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"

