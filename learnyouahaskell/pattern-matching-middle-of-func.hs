-- descList
-- Calls pattern matching in the middle of a function
-- usage: descList []
-- usage: descList [1]
-- usage: descList [1,2,3]
descList :: [a] -> String  
descList xs = "The list is " ++ what xs  
    where what [] = "empty."  
          what [x] = "a singleton list."  
          what xs = "a longer list." 