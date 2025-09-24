-- reverse' = foldl (flip (:)) []

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []
