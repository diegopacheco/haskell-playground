import Test.HUnit
import Calc

testSum :: Test
testSum = TestCase (assertEqual "sum' 1 2," 3 (sum' 1 2))

testSub :: Test
testSub = TestCase (assertEqual "sub' 3 1," 2 (sub' 3 1))

testMul :: Test
testMul = TestCase (assertEqual "mul' 3 2," 6 (mul' 3 2))

testDiv :: Test
testDiv = TestCase (assertEqual "div' 6 3," 2 (div' 6 3))

-- to test it
--   ghci :load Test.hs
--   runTestTT tests
tests :: Test
tests = TestList [testSum, testSub, testMul, testDiv]