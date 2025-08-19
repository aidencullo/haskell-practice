replicate' :: (Num a, Ord a) => a -> b -> [b]
replicate' 0 _ = []
replicate' n x = x:replicate' (n - 1) x
