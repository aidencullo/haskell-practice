import Data.List  

-- create a sample datatype
data MyBool = MyTrue | MyFalse


-- and typeclass instance
instance Eq MyBool where
    MyTrue  == MyTrue  = True
    MyFalse == MyFalse = True
    _       == _       = False


-- this will cause a parse error
-- import Data.List  

numUniques :: (Eq a) => [a] -> Int  
numUniques = length . nub  
