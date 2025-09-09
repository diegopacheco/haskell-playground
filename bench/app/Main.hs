module Main where

import Data.Time

timeIt :: IO a -> IO a
timeIt act = do
  t0 <- getCurrentTime
  r  <- act
  t1 <- getCurrentTime
  putStrLn $ "Elapsed: " ++ show (realToFrac (diffUTCTime t1 t0) :: Double) ++ "s"
  pure r

main :: IO ()
main = timeIt (putStrLn "Doing work..." >> mapM_ print [1..100000 :: Int])