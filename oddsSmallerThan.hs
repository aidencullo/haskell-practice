-- find the sum of all odd squares that are smaller than 10,000

oddsSmallerThan10000 :: [Int]
oddsSmallerThan10000 = filter odd [1..10000]
