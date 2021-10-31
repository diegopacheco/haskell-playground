-- addVectors function no pattern matcher
-- to use it: addVectors (1,2)(1,2)
addVectors :: (Num a, Num b) => (a, b) -> (a, b) -> (a, b)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)  