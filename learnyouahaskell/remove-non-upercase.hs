-- remove non upper case chars by keeping uper case chars only
-- removeNonUppercase "aaaBBB" = "BBB"
-- removeNonUppercase "aaa" = ""
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]