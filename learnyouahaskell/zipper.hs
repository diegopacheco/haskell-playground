-- Play with Zip
main :: IO ()
main = do
    let result = zip [1,2,3,4,5] [5,5,5,5,5]  
    print result

    let result2 = zip [1 .. 5] ["one", "two", "three", "four", "five"] 
    print result2

    let result3 =  zip [1..] ["apple", "orange", "cherry", "mango"]  
    print result3