merge :: Ord a => [a] -> [a] -> [a]
merge [] xs = xs
merge xs [] = xs
merge (x:xs) (y:ys) = if x<y then x:merge xs (y:ys) else y:merge (x:xs) ys

msort :: Ord a => [a] -> [a]
msort [] = []
msort (x:[]) = x:[]
msort xs = merge (msort (take half xs)) (msort (drop half xs))
    where half = div (length xs) 2

main :: IO ()
main = print (msort [5,1,3,2])
