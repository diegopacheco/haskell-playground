data BinTree a =
  Node a (BinTree a) (BinTree a)
  | Nil
  deriving (Show, Eq)

leaf :: a -> BinTree a
leaf a = Node a Nil Nil

inverse :: BinTree a -> BinTree a
inverse Nil = Nil
inverse (Node a l r) = Node a (inverse r) (inverse l)

main :: IO()
main = do
    let tree = Node 1 ( Node 2 (leaf 4) (leaf 5) ) ( Node 3 (leaf 6) (leaf 7) )
    putStr ("Binary Tree == " ++ show tree ++ "\n")
    let inv = inverse tree
    putStr ("Inverted Binary Tree == " ++ show inv ++ "\n") -- 