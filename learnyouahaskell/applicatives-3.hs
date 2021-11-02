main :: IO()
main = do
    let x = (++) <$> ["ha","heh","hmm"] <*> ["?","!","."]
    putStr(show x)