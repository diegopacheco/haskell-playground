type PhoneNumber = String  
type Name = String  
type PhoneBook = [(Name,PhoneNumber)]  

main :: IO()
main = do
    let x = getPhoneBook
    putStr(show x)

getPhoneBook :: PhoneBook
getPhoneBook = [
        ("betty","555-2938")     
        ,("bonnie","452-2928")     
        ,("patsy","493-2928")     
        ,("lucille","205-2928")     
        ,("wendy","939-8282")     
        ,("penny","853-2492")     
    ]
