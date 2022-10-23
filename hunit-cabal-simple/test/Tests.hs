import Test.HUnit ( assertEqual, runTestTT, Counts, Test(..), assertBool )
import Add(addOne)

test1 :: Test
test1 = TestCase (assertEqual "test" 2 (addOne 1))

tests :: Test
tests = TestList [TestLabel "test1" test1]

main :: IO Counts
main = do
  runTestTT tests