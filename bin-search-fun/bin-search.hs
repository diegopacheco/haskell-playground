search :: (Ord a) => a -> [a] -> Maybe Int
search _ [] = Nothing
search n xs
  | elem == n = Just index
  | elem < n  = (+index) . (+1) <$> search n bs
  | otherwise = search n as
  where index = length xs `quot` 2
        (as,elem:bs) = splitAt index xs

main :: IO()
main = do
    let xs = [1..10]
    print $ search 5 xs
    print $ search 11 xs