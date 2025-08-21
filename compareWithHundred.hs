module CompareWithHundred where

compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100
