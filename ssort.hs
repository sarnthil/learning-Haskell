minl :: Ord a => [a] -> a
minl (x:[]) = x
minl (x:y:xs) = minl ((min x y):xs)

rEl :: Ord a => [a] -> a -> [a]
rEl [] a = []
rEl (x:xs) a = if x==a then xs else x:(rEl xs a)

ssort :: Ord a => [a] -> [a]
ssort [] = []
ssort xs = (minl xs):ssort (rEl xs (minl xs))

main :: IO ()
main = print (ssort [5,1,3,2])
