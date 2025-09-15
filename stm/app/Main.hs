module Main where

import Control.Concurrent
import Control.Concurrent.STM
import Control.Monad (replicateM_)

main :: IO ()
main = do
  v <- atomically $ newTVar (0 :: Int)
  let bump = atomically (modifyTVar' v (+1))
  mapM_ (\_ -> forkIO $ replicateM_ 1000 bump) [1..8]
  threadDelay 200000
  atomically (readTVar v) >>= print
