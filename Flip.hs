flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = let g x y = f y x in g

useTest :: IO ()
useTest = test (flip' (-) 10 5)

test :: Int -> IO ()
test (-5) = print "correct"
test _    = print "wrong"
