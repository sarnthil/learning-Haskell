ltr :: Ord a => [a] -> [a] -> [a]
ltr [] xs = xs
ltr (x:xs) ys = ltr xs (insert x ys)

insert :: Ord a => a -> [a] -> [a]
insert x (y:ys) = if x < y then x:y:ys else y:insert x ys
insert x [] = [x]

isort :: Ord a => [a] -> [a]
isort [] = []
isort xs = ltr xs []

main :: IO ()
main = print (isort [5,1,3,2])
