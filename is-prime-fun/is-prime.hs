import Control.Monad(when)

isPrime :: Integral a => a -> Bool
isPrime k = length [ x | x <- [2..k], k `mod` x == 0] == 1

loop :: (Eq t, Num t, Monad m) => t -> (t -> m a) -> m ()
loop 0 _ = return ()
loop n f =
 do
  f n
  loop (n - 1) f

main :: IO()
main = do
 loop 100 (\ i -> Control.Monad.when (isPrime i) $ putStrLn (show i ++ " is prime"))
 putStrLn "Done"