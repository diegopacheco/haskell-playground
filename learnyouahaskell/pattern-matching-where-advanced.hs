-- bmiTell
-- Pattern Matching + Guads + Where Advanced
-- usage: bmiTell 50 5.5
bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= skinny = "You're underweight!"  
    | bmi <= normal = "You're supposedly regular."  
    | bmi <= fat    = "You're a bit over."  
    | otherwise     = "You're a otherwise."  
    where bmi = weight / height ^ 2  
          skinny = 18.5  
          normal = 25.0  
          fat = 30.0  