-- myMax
-- given 2 Ord tells you which one is bigger
-- usage: myMax 3 4
-- usage: myMax 'A' 'B' 
-- usage: myMax True False -- resul will be: True
myMax :: (Ord a) => a -> a -> a  
myMax a b   
    | a > b     = a  
    | otherwise = b 