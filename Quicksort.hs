quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) =
  let less = filter (< x) xs
      more = filter (>= x) xs
  in quicksort less ++ [x] ++ quicksort more

test :: [Int] -> [Int] -> IO ()
test xs ys = do
  if quicksort [100, 4, 2, 9, 1000] == [2, 4, 9, 100, 1000]
    then putStrLn "Success"
    else putStrLn "Fail"

main :: IO ()
main = do
  let unsorted = [100,4,2,9,1000]
  let sorted = [2,4,9,100,1000]
  test unsorted sorted
