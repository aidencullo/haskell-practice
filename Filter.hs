filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x:xs)
  | f x = x : filter' f xs
  | otherwise = filter' f xs

greaterThanTwo :: Int -> Bool
greaterThanTwo x = x > 2

fives :: [Int]
fives = replicate 5 5

main :: IO ()
main =
  test (filter' greaterThanTwo fives)

test :: [Int] -> IO ()
test [5,5,5,5,5] = print "correct"
test _ = print "incorrect"
