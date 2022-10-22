ddOne x = 1 + x

map (\x -> 2+x) [1,2,3,4,5,6]

filter (\x -> x>=2) (map addOne [1,2,3])

dropWhile (\x -> x<=3) [1,2,3,4,5,6,7,8,9]