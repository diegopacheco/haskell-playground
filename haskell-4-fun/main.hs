addOne x = 1 + x

result0 = sum [1,2,3,4,5,6]

result1 = map (\x -> 2+x) [1,2,3,4,5,6]

result2 = filter (\x -> x>=2) (map addOne [1,2,3])

result3 = dropWhile (\x -> x<=3) [1,2,3,4,5,6,7,8,9]

result4 = foldl (+) 0 [1,2,3]

result5 = foldr (+) 0 [1..10]

result6 = show(4) ++ "2"

result7 = head [1,2,3,4,5]

result8 = tail [1,2,4,5,6]

result9 = last [1,2,4,5,6]

factorial :: (Integral a) => a -> a  
factorial 0 = 1
factorial n = n * factorial (n - 1)