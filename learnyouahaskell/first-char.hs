-- firstChar 
-- tell you the fir character of a string
-- usage: firstChar "Dracula from Bran Stoker"
firstChar :: String -> String  
firstChar "" = "Empty string, whoops!"  
firstChar all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x] 