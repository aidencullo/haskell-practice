import Debug.Trace

factorial 0 = 1
factorial n = trace ("factorial " ++ show n) (n * factorial (n-1))

-- factorial 3 prints:
-- factorial 3
-- factorial 2
-- factorial 1
-- Result: 6
