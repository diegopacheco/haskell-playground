import Data.Array

inv :: [([Char], Integer, Integer, Integer)]
inv = [
        ("map",9,150,1), ("compass",13,35,1), ("water",153,200,2), ("sandwich",50,60,2),
        ("glucose",15,60,2), ("tin",68,45,3), ("banana",27,60,3), ("apple",39,40,3),
        ("cheese",23,30,1), ("beer",52,10,3), ("cream",11,70,1), ("camera",32,30,1),
        ("tshirt",24,15,2), ("trousers",48,10,2), ("umbrella",73,40,1), ("wtrousers",42,70,1),
        ("woverclothes",43,75,1), ("notecase",22,80,1), ("sunglasses",7,20,1), ("towel",18,12,2),
        ("socks",4,50,1), ("book",30,10,2)
    ]

knapsack :: (Foldable t, Ix i, Enum i, Num i, Ord a) 
    => t (a, i, i, i) -> i -> (i, [(a, i)])
knapsack items cap = solu items ! cap where
    solu = foldr f (listArray (0,cap) (repeat (0,[])))
    f (name,w,v,cnt) ss = listArray (0,cap) $ map optimal [0..] where
        optimal ww = maximum $ (ss!ww):[prepend (v*i,(name,i)) (ss!(ww - i*w))
                 | i <- [1..cnt], i*w < ww]
        prepend (x,n) (y,s) = (x+y,n:s)
 
main :: IO ()
main = do print $ knapsack inv 400