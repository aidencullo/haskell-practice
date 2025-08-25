zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys


combine :: Int -> Float -> String
combine x y = show (addIntAndFloat x y)


addIntAndFloat :: Int -> Float -> Float
addIntAndFloat x y = fromIntegral x + y

zip' :: [a] -> [b] -> [(a, b)]
zip' xs ys =  zipWith' (\x y -> (x, y)) xs ys
