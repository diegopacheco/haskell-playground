import Data.Map (insert)
import qualified Data.Map as Map

main :: IO()
main = do
    let phoneBook = [("betty","555-2938")  
            ,("bonnie","452-2928")  
            ,("patsy","493-2928")  
            ,("lucille","205-2928")  
            ,("wendy","939-8282")  
            ,("penny","853-2492")  
            ]
    putStr("PhoneBook Records" ++ show phoneBook)

    let penny = findKey "penny" phoneBook
    putStr("Penny: " ++ show penny ++ "\n")

    let wilma = findKey "wilma" phoneBook
    putStr("Wilma: " ++ show wilma ++ "\n")

    let x = Map.insert 3 100 Map.empty
    putStr("Map: " ++ show x ++ "\n")

    let y = Map.fromList phoneBook
    putStr("Map: " ++ show y ++ "\n")

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v  
findKey key [] = Nothing  
findKey key ((k,v):xs) = if key == k  
                            then Just v  
                            else findKey key xs  