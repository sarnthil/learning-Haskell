merge :: Ord a => [a] -> [a] -> [a]
merge [] xs = xs
merge xs [] = xs
merge (x:xs) (y:ys) = if x<y then x:merge xs (y:ys) else y:merge (x:xs) ys

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:[]) = x:[]
qsort (x:xs) = merge (qsort [y | y <- xs, y < x]) (x:qsort [y | y <- xs, y >= x])

main :: IO ()
main = print (qsort [5,1,3,2])
