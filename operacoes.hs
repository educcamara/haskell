multiplica :: Int -> Int -> Int
multiplica x 0 = 0
multiplica x y
    | y < 0 = multiplica (-x) (-y)
    | otherwise = x + multiplica x (y-1)

divide :: Int -> Int -> Int
divide x 0 = error "Voce eh doido"
divide 0 y = 0
divide x y
    | x < 0 && y < 0 = divide (-x) (-y)
    | x < 0 = (-1) * divide (-x) y
    | y < 0 = (-1) * divide x (-y)
    | x < y = 0
    | otherwise = 1 + divide (x-y) y