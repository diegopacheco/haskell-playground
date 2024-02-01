module Main where
import qualified Data.List.NonEmpty as Map
import qualified Control.Applicative as Map

phoneBook :: [(String, String)]
phoneBook = 
    [("betty","555-2938")
    ,("bonnie","452-2928")
    ,("patsy","493-2928")
    ,("lucille","205-2928")
    ,("wendy","939-8282")
    ,("penny","853-2492")
    ]

findNumberByName :: (Eq k) => k -> [(k,v)] -> v
findNumberByName key = snd . head . filter (\ (k, v) -> key == k)

byTheList :: Map.NonEmpty (String, String)
byTheList = Map.fromList [("betty","555-2938"),("bonnie","452-2928"),("lucille","205-2928")]

main :: IO ()
main = do
    print phoneBook
    putStrLn (findNumberByName "penny" phoneBook)
    print byTheList
