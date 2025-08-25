flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f =
  let g x y = f y x
  in g
