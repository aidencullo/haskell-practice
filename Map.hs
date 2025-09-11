map' :: (a->a)->[a]->[a]
map' _ [] = []
map' f (x:xs) = f x : map' f xs