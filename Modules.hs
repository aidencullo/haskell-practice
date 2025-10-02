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
