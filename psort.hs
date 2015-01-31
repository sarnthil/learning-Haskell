permute :: Ord a => [a] -> [[a]]
permute [] = [[]]
permute xs = concatMap (\x -> map (x:) $ permute $ delete xs x) xs

delete :: Ord a => [a] -> a -> [a]
delete [] a = []
delete (x:xs) a = if x==a then xs else x:(delete xs a)

sorted :: Ord a => [a] -> Bool
sorted [] = True
sorted (x:[]) = True
sorted (x:y:xs) = if x > y then False else sorted (y:xs)

psort :: Ord a => [a] -> [a]
psort [] = []
psort xs = permsort (permute xs)

permsort :: Ord a => [[a]] -> [a]
permsort (x:[]) = x
permsort (x:xs) = if sorted x then x else permsort xs

main :: IO ()
main = print (psort [5,1,3,2])
