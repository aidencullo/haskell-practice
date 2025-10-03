import Data.List
-- this will cause a clash error on filter
-- import Data.Map
import qualified Data.Map  

-- create a sample datatype
data MyBool = MyTrue | MyFalse

-- typeclass instance
instance Eq MyBool where
    MyTrue  == MyTrue  = True
    MyFalse == MyFalse = True
    _       == _       = False

-- using Data.List
numUniques :: (Eq a) => [a] -> Int  
numUniques = length . nub  


myMap = Data.Map.fromList [(1,'a'), (2,'b')]
filtered = Data.Map.filter (\v -> v == 'a') myMap


-- Define a type
data Shape = Circle Float | Rectangle Float Float

-- Circle and Rectangle are *constructors*
-- They create values of type Shape
c1 :: Shape
c1 = Circle 3.0   -- uses the Circle constructor

r1 :: Shape
r1 = Rectangle 4.0 5.0  -- uses the Rectangle constructor

-- implement allSame
allSame :: (Eq a) => [a] -> Bool
allSame xs = (length . nub) xs == 1

testAllSame1 :: Bool
testAllSame1 = allSame (replicate 10 10) == True

testAllSame2 :: Bool
testAllSame2 = allSame (replicate 10 100) == True

testAllSames :: [Bool]
testAllSames = [testAllSame1, testAllSame2]

testAllSame :: Bool
testAllSame = and testAllSames

