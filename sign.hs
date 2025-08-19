sign :: (Ord a, Num a) => a -> String
sign x
  | x < 0 = "Negative"
  | x > 0 = "Positive"
  | x == 0 = "Zero"
