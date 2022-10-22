data Person = Person String String deriving (Show)  

getName :: Person -> String  
getName (Person name _ ) = name

toString :: Person -> String  
toString (Person name mail) = "Person{ " ++ name ++ ", " ++ mail ++ " }"

guy = Person "John" "john@doe.com"
myName = getName guy
tostr = toString guy