newtype CharList = 
    CharList { 
        getCharList :: [Char] 
    } deriving (Eq, Show)

main :: IO()
main = do
    let x = CharList "this will be shown!"  
    putStr(show x ++ "\n")

    let result = CharList "benny" == CharList "benny"
    putStr(show result ++ "\n")