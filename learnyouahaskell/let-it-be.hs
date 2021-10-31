-- cylinder
-- let *vars* in *expression*
-- uage: cylinder 3 8
cylinder :: (RealFloat a) => a -> a -> a  
cylinder r h = 
    let sideArea = 2 * pi * r * h  
        topArea = pi * r ^2  
        result = sideArea + 2 * topArea  
    in  result