-- SOMENTE IMPARES
somenteimpar :: [Int] -> [Int]
somenteimpar [] = []
somenteimpar (x:xs)
    | mod x 2 == 1 = x : somenteimpar xs
    | otherwise = somenteimpar xs

-- SOMENTE PARES
somentepar :: [Int] -> [Int]
somentepar [] = []
somentepar (x:xs)
    | mod x 2 == 0 = x : somentepar xs
    | otherwise = somentepar xs

-- SOMENTE PRIMOS
divisores :: Int -> Int -> [Int]
divisores x 0 = []
divisores x 1 = [1]
divisores x y
    | mod x y == 0 = y : divisores x (y-1)
    | otherwise = divisores x (y-1)

sePrimo :: Int -> Bool
sePrimo x = divisores x x == [x,1]

somenteprimo :: [Int] -> [Int]
somenteprimo [] = []
somenteprimo (x:xs)
    | sePrimo x = x: somenteprimo xs
    | otherwise = somenteprimo xs