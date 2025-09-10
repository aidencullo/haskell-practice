-- find the sum of all odd squares that are smaller than 10,000

sumOddsSmallerThan10000 :: Int
sumOddsSmallerThan10000 = sum (filter odd [1..10000])
