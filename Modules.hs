import Data.List
-- this will cause a clash error on filter
-- import Data.Map

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


filtered = filter (\v -> v == 'a') ['a'..'z']
