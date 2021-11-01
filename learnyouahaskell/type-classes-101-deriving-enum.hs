data Day = 
    Monday |
    Tuesday | 
    Wednesday | 
    Thursday | 
    Friday | 
    Saturday | 
    Sunday deriving (Eq, Ord, Show, Read, Bounded, Enum)  

main :: IO()
main = do
    putStr(show Wednesday ++ "\n")
    let bestDay = read "Saturday" :: Day
    putStr(show bestDay ++ "\n")
    putStr(show (Saturday > Friday) ++ "\n")
    putStr(show $ succ Monday)
    putStr("\n" ++ show [Thursday .. Sunday])