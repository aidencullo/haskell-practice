filter' :: (a -> Bool) -> [a] -> [a]
filter' f xs = foldr (\x acc -> if f x then x : acc else acc) [] xs

oneToTen :: [Int]
oneToTen = [1..10]

testFilter :: Bool
testFilter =
  let expected = filter even oneToTen
  in filter' even oneToTen == expected
  