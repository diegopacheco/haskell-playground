-- desc
-- Case of Pattern
-- usage descList [1]
-- usage descList [1,2,3]
-- usage descList []]
descList :: [a] -> String  
descList xs = "The list is " ++ case xs of 
                                [] -> "empty."  
                                [x] -> "a singleton list."   
                                xs -> "a longer list."