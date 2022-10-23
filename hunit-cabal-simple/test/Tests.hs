{-# OPTIONS_GHC -Wno-type-defaults #-}
import Test.HUnit ( assertEqual, runTestTT, Counts, Test(..))
import Add(addOne)

testAddOne :: Test
testAddOne = TestCase (assertEqual [] 42 (addOne 41))

tests :: Test
tests = TestList [TestLabel "testAddOne" testAddOne]

main :: IO Counts
main = do
  runTestTT tests