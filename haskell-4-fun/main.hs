addOne x = 1 + x

x = map (\x -> 2+x) [1,2,3,4,5,6]

y = filter (\x -> x>=2) (map addOne [1,2,3])

z = dropWhile (\x -> x<=3) [1,2,3,4,5,6,7,8,9]

w = foldl (+) 0 [1,2,3]