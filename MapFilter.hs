-- Let's find the largest number under 100,000 that's divisible by 3829. To do that, we'll just filter a set of possibilities in which we know the solution lies.

largestNumberUnder100kDivisibleBy3829 = maximum (filter (\x -> x `mod` 3829 == 0)[1..100000])
