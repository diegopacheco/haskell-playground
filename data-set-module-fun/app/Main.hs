module Main where

import qualified Data.Set as Set

text1 :: String
text1 = "I just had an anime dream. Anime... Reality... Are they so different?"

text2 :: String
text2 = "The old man left his garbage can out and now his trash is all over my lawn!"

getSetFromMyList :: (Ord a, Num a) => Set.Set a
getSetFromMyList = Set.fromList [1,2,3]

main :: IO ()
main = do
    let set1 = Set.fromList text1
    let set2 = Set.fromList text2
    let inter = Set.intersection set1 set2
    let diff = Set.difference set1 set2
    let union = Set.union set1 set2
    print set1
    print set2
    print inter
    print union

    let mySetSingleton = Set.singleton 9
    print(mySetSingleton)

    print getSetFromMyList