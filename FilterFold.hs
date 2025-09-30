filterLeft :: (a -> Bool) -> [a] -> [a]
filterLeft f xs = foldl (\acc x -> if f x then acc ++ [x] else acc) [] xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' f xs = foldr (\x acc -> if f x then x : acc else acc) [] xs

filterAndReverse :: (a -> Bool) -> [a] -> [a]
filterAndReverse f xs = foldl (\acc x -> if f x then x : acc else acc) [] xs

oneToTen :: [Int]
oneToTen = [1..10]

testFilterAndReverse :: Bool
testFilterAndReverse =
  let expected = reverse (filter even oneToTen)
  in filterAndReverse even oneToTen == expected

testFilterLeft :: Bool
testFilterLeft =
  let expected = filter even oneToTen
  in filterLeft even oneToTen == expected

testFilter :: Bool
testFilter =
  let expected = filter even oneToTen
  in filter' even oneToTen == expected
  