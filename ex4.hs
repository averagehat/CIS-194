cartProd xs ys = [(x,y) | x <- xs, y <- ys]
lt (i, j) = (1 <= i) && (i <= j)
addij (i, j) =  (i + j + (2*i*j)) 
n = 8
p x = 2*x + 1
filter (not . lt) $  cartProd [1..n] [1..n]
xs  = filter (not . ( >= n) . addij) $ filter (not . lt) $  cartProd [0..n] [0..n]
map (\x -> (2*x)+ 1) $ concat [[a,b] | (a,b) <- xs]
