-- fun 
-- will figure out a proper [Char] for you. We can do IF inside Vector/List
-- usage: fun
fun :: [[Char]]
fun = 
    [ if 5 > 3 then "Woo" else "Boo", 
      if 'a' > 'b' then "Foo" else "Bar"]  

-- fun2
fun2 :: [(Integer, Integer, Integer)]
fun2 = [let square x = x * x in (square 5, square 3, square 2)]

-- fun3
fun3 :: Integer
fun3 = 2 * ((let a = 9 in a + 1) + 2)

-- fun4
fun4 :: Integer
fun4 = (let (a,b,c) = (1,2,3) in a+b+c) * 100  