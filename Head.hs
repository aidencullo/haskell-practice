head' :: [a] -> a
head' (x:_) = x
head' []    = error "empty list"

test :: Bool
test = head [1..] == head' [1..]
