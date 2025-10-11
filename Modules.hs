import Data.List
import Data.Char
import Data.Function
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

-- Search for a sublist
search :: Eq a => [a] -> [a] -> Bool
search needle haystack =
    let nLen = length needle
    in foldl (\acc x -> if take nLen x == needle then True else acc) False (tails haystack)

-- Find first element satisfying predicate
first :: Maybe (Double, Int, Int, Int)
first = let stock = [(994.4,2008,9,1),(995.2,2008,9,2),(999.2,2008,9,3),(1001.4,2008,9,4),(998.3,2008,9,5)]
        in find (\(val,_,_,_) -> val > 1000) stock

-- Average
avg :: Fractional a => [a] -> a
avg xs = sum xs / genericLength xs
-- avg' xs = sum xs / length xs  -- causes error: Fractional Int

-- groupBy examples
groupByExample :: [[Int]]
groupByExample = groupBy (==) [1,1,2,2,2,3,1,1] 
-- Result: [[1,1],[2,2,2],[3],[1,1]]

groupByNormal :: [[Double]]
groupByNormal = groupBy (\x y -> (x > 0) == (y > 0)) values

groupByUsingOn :: [[Double]]
groupByUsingOn = groupBy ((==) `on` (> 0)) values

values :: [Double]
values = [-4.3, -2.4, -1.2, 0.4, 2.3, 5.9, 10.5, 29.1, 5.3, -2.4, -14.5, 2.9, 2.3]

testOn :: Bool
testOn = groupByNormal values == groupByUsingOn values

-- Filter out space-only groups
groups :: [String]
groups = groupBy ((==) `on` isSpace) "hey folks its me"

filteredGroups :: [String]
filteredGroups = filter (not . isSpace . head) groups

-- Caesar cipher
encode :: Int -> String -> String
encode shift msg = map (chr . (+ shift) . ord) msg

testEncode :: Bool
testEncode = encode 5 "Marry Christmas! Ho ho ho!" == "Rfww~%Hmwnxyrfx&%Mt%mt%mt&"

decode :: Int -> String -> String
decode shift msg = map (chr . (+ (-shift)) . ord) msg

testDecode :: Bool
testDecode = decode 5 "Rfww~%Hmwnxyrfx&%Mt%mt%mt&" == "Marry Christmas! Ho ho ho!"

testEncodeDecode :: Bool
testEncodeDecode = decode 5 (encode 5 "Marry Christmas! Ho ho ho!") == "Marry Christmas! Ho ho ho!"
