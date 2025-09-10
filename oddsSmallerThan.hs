-- find the sum of all odd squares that are smaller than 10,000

sumOddsSmallerThan10000 :: Int
sumOddsSmallerThan10000 = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))
