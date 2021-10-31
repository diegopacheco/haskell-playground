-- High Order Functions
applyTwice :: (a -> a) -> a -> a  
applyTwice f x = f (f x) 

nbaTimeOff :: [Char]
nbaTimeOff = applyTwice (++ " ShakaLaka ") "Boom "

wayme :: String
wayme = applyTwice (++ " NaN NaN NaN ") "Batman! "