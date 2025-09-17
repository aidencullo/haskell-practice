-- foldr on an infinite list

onethroughfour = take 4 (foldr (:) [] [1..])