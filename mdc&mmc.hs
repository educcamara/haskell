divisores :: Int -> Int -> [Int]
divisores x 0 = []
divisores x 1 = [1]
divisores x y
    | mod x y == 0 = y : divisores x (y-1)
    | otherwise = divisores x (y-1)

sePrimo :: Int -> Bool
sePrimo x = divisores x x == [x,1]

_mdc :: Int -> Int -> Int -> Int
_mdc x y d
    | x == 1 || y == 1 = 1
    | d > x || d > y = 1
    | not (sePrimo d) = _mdc x y (d+1)
    | mod x d == 0 && mod y d == 0 = d * _mdc (div x d) (div y d) 2
    | otherwise = _mdc x y (d+1)

mdc :: Int -> Int -> Int
mdc x y = _mdc x y 2

_mmc :: Int -> Int -> Int -> Int
_mmc 1 1 d = 1
_mmc x y d
    | not (sePrimo d) = _mmc x y (d+1)
    | mod x d == 0 && mod y d == 0 = d * _mmc (div x d) (div y d) 2
    | mod x d == 0 = d * _mmc (div x d) y 2
    | mod y d == 0 = d * _mmc x (div y d) 2
    | otherwise = _mmc x y (d+1)

mmc :: Int -> Int -> Int
mmc x y = _mmc x y 2