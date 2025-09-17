-- foldr on an infinite list

onethroughfour = take 4 (foldr (:) [] [1..])

andFalse :: Bool
andFalse = foldr (&&) True (repeat False)