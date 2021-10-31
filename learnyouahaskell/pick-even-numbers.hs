-- Pick only even numbers
-- will output [[2,2,4],[2,4,6,8],[2,4,2,6,2,6]]
main = do 
    let xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]  
    let result = [ [ x | x <- xs, even x ] | xs <- xxs]
    print result