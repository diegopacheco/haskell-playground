-- Play with Tuples and functions
-- such as fst, snd
main :: IO ()
main = do 
    let tuple = (1, "hello")
    print tuple

    let first = fst tuple
    print first

    let second = snd tuple
    print second
    