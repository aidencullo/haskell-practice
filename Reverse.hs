-- reverse' = foldl (flip (:)) []

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

reverse1' :: [a] -> [a]
reverse1' = foldr (\x acc -> acc ++ [x]) []
