-- myHead
-- case *expression* of *pattern* -> *expression*
-- usage myHead [1,2,3,4,5]
myHead :: [a] -> a  
myHead xs = case xs of 
            [] -> error "No head for empty lists!" 
            (x:_) -> x