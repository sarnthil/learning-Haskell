sumdiv number = sum [x | x <- [1 .. number `div` 2], number `mod` x == 0]
amicables pair = [(x,y) | x <- [1..pair], let y = sumdiv x, sumdiv y == x , x<y]
