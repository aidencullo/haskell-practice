-- foldr on an infinite list

onethroughfour = take 4 (foldr (:) [] [1..])

-- will return False (False && ..)
andFalse :: Bool
andFalse = foldr (&&) True (repeat False)

-- inifinite
andTrue :: Bool
andTrue = foldr (&&) False (repeat True)