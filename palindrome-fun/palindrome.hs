isPalindrome :: String -> Bool
isPalindrome w = w == reverse w

main :: IO()
main = do
    putStr("madamimadam ? = " ++ show (isPalindrome "madamimadam") ++ "\n")
    putStr("madam ? = " ++ show (isPalindrome "madam") ++ "\n")
    putStr("llama ? = " ++ show (isPalindrome "llama") ++ "\n")
    putStr("diego ? = " ++ show (isPalindrome "diego") ++ "\n")
    putStr("aba ? = " ++ show (isPalindrome "aba") ++ "\n")