filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x:xs)
  | f x = x : filter' f xs
  | otherwise = filter' f xs

greaterThanTwo x = x > 2
fives = replicate 5 5

main =
  test (filter' greaterThanTwo fives)

test [5,5,5,5,5] = print "correct"
test _ = print "incorrect"
