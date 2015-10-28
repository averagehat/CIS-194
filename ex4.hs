cartProd xs ys = [(x,y) | x <- xs, y <- ys]
lt (i, j) = (1 <= i) && (i <= j)
addij (i, j) =  (i + j + (2*i*j)) 
n = 8
p x = 2*x + 1
filter (not . lt) $  cartProd [1..n] [1..n]
xs  = filter (not . ( >= n) . addij) $ filter (not . lt) $  cartProd [0..n] [0..n]
map (\x -> (2*x)+ 1) $ concat [[a,b] | (a,b) <- xs]

divides :: Int -> Int -> Bool
divides x y = x `mod` y == 0
isEmpty [] = True
isEmpty _ = False
range x = [0..x]
isPrime :: Int -> Bool
isPrime x = isEmpty $ filter odd $ filter (divides x)   [2..x-1]
