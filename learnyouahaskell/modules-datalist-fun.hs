import Data.List  
--import Data.List (intersperse) -- also works!

-- usage: re
re :: [Char]
re = intersperse '.' "STARS"

-- usage: outcast
outcast :: [Char]
outcast = intercalate " " ["hey","yah","oh oh"] 

-- usage: showFlat
showFlat :: [Integer]
showFlat =
    concat [[3,4,5],[2,3,4],[2,1,1]] 

-- usage: tellMe
tellMe :: Bool
tellMe =
    all (>4) [6,9,10]  

main :: IO ()
main = do
     let x1 = any (==4) [2,3,5,6,1,4] -- True
     print x1
     
     let x2 = all (`elem` ['A'..'Z']) "HEYGUYSwhatsup" -- False
     print x2

     let x3 =  any (`elem` ['A'..'Z']) "HEYGUYSwhatsup" -- True
     print x3

     let x4 = splitAt 3 "heyman" -- ("hey","man")
     print x4
