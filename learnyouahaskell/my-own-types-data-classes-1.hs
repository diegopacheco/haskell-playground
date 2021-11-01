data MyBool = False | True deriving Show

main :: IO()
main = do
    let x = getTheTruth
    putStr("MyBool == " ++ show x ++ "\n")

getTheTruth :: MyBool
getTheTruth = Main.True