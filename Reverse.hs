-- reverse' = foldl (flip (:)) []
-- reverse' = foldl (\acc x -> x : acc) []

reverse' :: [a] -> [a]
reverse' = foldr (\x acc -> acc ++ [x]) []
