menor :: [Int] -> Int
menor [x] = x
menor (x:y:xs)
    | x < y = menor (x:xs)
    | otherwise = menor (y:xs)

retiraMenor :: [Int] -> [Int]
retiraMenor [] = []
retiraMenor (x:xs)
    | x == menor (x:xs) = xs
    | otherwise = x: retiraMenor xs

ordena :: [Int] -> [Int]
ordena [] = []
ordena lista = menor lista : ordena (retiraMenor lista)