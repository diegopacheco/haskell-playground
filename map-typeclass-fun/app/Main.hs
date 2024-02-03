module Main where

data Point = Point Float Float deriving (Show)

data Shape = Circle Float Float Float | 
             Rectangle Point Point deriving (Show)

getCircles :: [Shape]
getCircles = map (Circle 10 20) [4,5,6,6]

--
-- Here is quite interesting because we are usign the alegebric types in the patter matcher
--
surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

main :: IO ()
main = do 
    putStrLn "Let's say you have an incomplete circle with only 2 points "
    putStrLn "check this out how we can complete the last one :-) "
    print getCircles
    putStrLn "check this out "
    print (surface (Rectangle (Point 0 0) (Point 100 100)))
