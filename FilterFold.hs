filterAndReverse :: (a -> Bool) -> [a] -> [a]
filterAndReverse f xs = foldl (\acc x -> if f x then x : acc else acc) [] xs

oneToTen :: [Int]
oneToTen = [1..10]

testFilterAndReverse :: Bool
testFilterAndReverse =
  let expected = reverse (filter even oneToTen)
  in filterAndReverse even oneToTen == expected

-- testFilter :: Bool
-- testFilter =
--   let expected = filter even oneToTen
--   in filter' even oneToTen == expected
  