mdc :: Int -> Int -> Int
mdc x 0 = x
mdc x y
    | x < y = mdc y x
    | otherwise = mdc y (mod x y)

mmc :: Int -> Int -> Int
mmc x y = div (x * y) (mdc x y)