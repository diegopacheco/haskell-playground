data CallMEMaybe a = 
    Nothing | 
    Just a
    deriving (Show)

main :: IO()
main = do
    putStr("Calling Joker  = " ++ show callJoker ++ "\n")
    putStr("Calling Selina = " ++ show callSelinaKyle ++ "\n")

callJoker :: CallMEMaybe String
callJoker = Main.Just "Haha"

callSelinaKyle :: CallMEMaybe String
callSelinaKyle = Main.Nothing