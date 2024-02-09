module Main where
import Data.Monoid ( Sum(Sum) )

applyLog :: (Monoid m) => (a,m) -> (a -> (b,m)) -> (b,m)
applyLog (x,log) f = let (y,newLog) = f x in (y,log `mappend` newLog)

isBigGang :: Int -> (Bool, String)
isBigGang x = (x > 9, "Compared gang size to 9.")

type Food = String
type Price = Sum Int

addDrink :: Food -> (Food,Price)
addDrink "beans" = ("milk", Sum 25)
addDrink "jerky" = ("whiskey", Sum 99)
addDrink _ = ("beer", Sum 30)

main :: IO ()
main = do 
    putStrLn "Simple return with some context"
    print $ isBigGang 4

    --
    -- Using monoid now
    -- 
    print(Sum 3 `mappend` Sum 9)
    print(("beans", Sum 10) `applyLog` addDrink)