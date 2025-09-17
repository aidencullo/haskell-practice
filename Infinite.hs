-- foldr on an infinite list

oneThroughFour = take 4 (foldr (:) [] [1..])

-- will return False (False && ..)
falseAndTrue :: Bool
falseAndTrue = foldr (&&) True (repeat False)

-- still false
falseAndFalse :: Bool
falseAndFalse = foldr (&&) False (repeat False)

-- infinite
trueAndFalse :: Bool
trueAndFalse = foldr (&&) False (repeat True)

-- infinite as well I think
trueAndTrue :: Bool
trueAndTrue = foldr (&&) True (repeat True)