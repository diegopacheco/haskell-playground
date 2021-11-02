data CMaybe a = CNothing | CJust Int a deriving (Show)  

instance Functor CMaybe where  
    fmap f CNothing = CNothing  
    fmap f (CJust counter x) = CJust (counter+1) (f x)

main :: IO()
main = do
    putStr(show (fmap (++"ha") (CJust 0 "ho")))
    putStr(show (fmap (++"he") (fmap (++"ha") (CJust 0 "ho"))))
    putStr(show (fmap (++"blah") CNothing)) 