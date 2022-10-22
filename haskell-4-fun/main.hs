addOne x = 1 + x

result1 = map (\x -> 2+x) [1,2,3,4,5,6]

result2 = filter (\x -> x>=2) (map addOne [1,2,3])

result3 = dropWhile (\x -> x<=3) [1,2,3,4,5,6,7,8,9]

result4 = foldl (+) 0 [1,2,3]

result5 = foldr (+) 0 [1..10] --