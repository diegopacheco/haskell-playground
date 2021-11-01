-- Function Composition
-- usage negateAll result: [-5,-3,-6,-7,-3,-2,-19,-24]
negateAll :: [Integer]
negateAll =
    map (\x -> negate (abs x)) [5,-3,-6,7,-3,2,-19,24]  

-- usage fn 1
fn :: (RealFrac a, Integral b, Floating a) => a -> b
fn x = ceiling (negate (tan (cos (max 50 x))))      

-- usage fn2 2
fn2 :: Double -> Integer
fn2 = 
    ceiling.negate.tan.cos.max 50 