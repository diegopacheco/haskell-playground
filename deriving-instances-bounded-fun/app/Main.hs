module Main where

data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday 
           deriving (Eq, Ord, Show, Read, Bounded, Enum)

enumCanDoCoolStuff :: [Day]
enumCanDoCoolStuff = [Thursday .. Saturday]

main :: IO ()
main = do
    putStrLn "First day is: "
    print (minBound :: Day)
    putStrLn "Last day is: "
    print (maxBound :: Day)

    print enumCanDoCoolStuff
