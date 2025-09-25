product' :: (Num a) => [a] -> a
-- product' = foldr1 (\x acc -> acc * x)
product' = foldr1 (*)
