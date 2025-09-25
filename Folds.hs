product' :: (Num a) => [a] -> a
-- product' = foldr1 (\x acc -> acc * x)
product' = foldr1 (*)

product2' :: (Num a) => [a] -> a
product2' = foldl1 (*)

oneToTen = [1..10]
testProducts = product' oneToTen == product2' oneToTen && product' oneToTen == product oneToTen

