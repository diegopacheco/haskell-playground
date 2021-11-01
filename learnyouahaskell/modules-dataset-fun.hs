import qualified Data.Set as Set

main :: IO ()
main = do
    let text1 = "Batman is cool"
    let text2 = "Joker  is cool"

    let set1 = Set.fromList text1
    let set2 = Set.fromList text2

    let inter = Set.intersection set1 set2
    putStr(show inter ++ "\n")

    let u = Set.union set1 set2 
    putStr(show u ++ "\n")