-- How many elements does it take for the sum of the square roots of all natural numbers to exceed 1000

sumSqrt :: Int
sumSqrt = length(takeWhile (<1000) (scanl1 (+) (map (sqrt) [1..]))) + 1

-- flip' f = \x y -> f y x
flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = 
  let g x y = f y x
  in g
  
(.:) :: (c -> a) -> (b -> c) -> (b -> a)
(.:) f g = \x -> f $ g x


