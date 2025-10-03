import Data.List (nub)
import qualified Data.Map as Map

-- Sample datatype
data MyBool = MyTrue | MyFalse

-- Typeclass instance
instance Eq MyBool where
    MyTrue  == MyTrue  = True
    MyFalse == MyFalse = True
    _       == _       = False

-- Using Data.List
numUniques :: Eq a => [a] -> Int
numUniques = length . nub

-- Using Data.Map
myMap :: Map.Map Int Char
myMap = Map.fromList [(1,'a'), (2,'b')]

filtered :: Map.Map Int Char
filtered = Map.filter (== 'a') myMap

-- Shape datatype
data Shape = Circle Float | Rectangle Float Float

c1 :: Shape
c1 = Circle 3.0

r1 :: Shape
r1 = Rectangle 4.0 5.0

-- allSame function
allSame :: Eq a => [a] -> Bool
allSame xs = length (nub xs) == 1

-- Tests
testAllSame1, testAllSame2, testAllSame3, testAllSame4 :: Bool
testAllSame1 = allSame (replicate 10 10)
testAllSame2 = allSame (replicate 10 100)
testAllSame3 = allSame [1..10] == False
testAllSame4 = allSame (take 100 $ repeat 10)

testAllSames :: [Bool]
testAllSames = [testAllSame1, testAllSame2]

testAllSameOverall :: Bool
testAllSameOverall = and testAllSames
