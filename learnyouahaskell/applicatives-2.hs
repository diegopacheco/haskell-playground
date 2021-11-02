main :: IO()
main = do
    let x = (++) <$> Just "johntra" <*> Just "volta"
    putStr("(++) <$> Just \"johntra\" <*> Just \"volta\" = " ++ show x ++ "\n")

    let y = pure "Hey" :: Maybe String
    putStr("pure \"Hey\" :: Maybe String = " ++ show y ++ "\n")