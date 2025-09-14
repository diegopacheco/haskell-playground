module Main where

data Expr = Num Double | Add Expr Expr | Mul Expr Expr | Div Expr Expr

eval :: Expr -> Double
eval (Num x) = x
eval (Add e1 e2) = eval e1 + eval e2
eval (Mul e1 e2) = eval e1 * eval e2
eval (Div e1 e2) = eval e1 / eval e2

num :: Double -> Expr
num = Num

add :: Expr -> Expr -> Expr
add = Add

mul :: Expr -> Expr -> Expr
mul = Mul

calculation :: Expr
calculation = mul (add (num 2) (num 3)) (num 4)

main :: IO ()
main = print(eval calculation)
