-- create a sample datatype
data MyBool = MyTrue | MyFalse


-- and typeclass instance
instance Eq MyBool where
    MyTrue  == MyTrue  = True
    MyFalse == MyFalse = True
    _       == _       = False
