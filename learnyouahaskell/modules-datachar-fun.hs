import Data.Char

main :: IO()
main = do
    let result1 = all isAlphaNum "bobby283"
    putStr("all isAlphaNum \"bobby283\" == " ++ show result1 ++ "\n")

    let result2 = all isNumber "283"
    putStr("all isNumber \"283\" == " ++ show result2 ++ "\n")  

    