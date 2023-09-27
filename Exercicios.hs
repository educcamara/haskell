import Data.Char

menorNum [x] = x
menorNum (x:y:xs)
    | x < y = menorNum (x:xs)
    | otherwise = menorNum (y:xs)

seOrdenado :: [Int] -> Bool
seOrdenado [] = False
seOrdenado [x] = True
seOrdenado (x:xs)
    | x == menorNum (x:xs) = seOrdenado xs
    | otherwise = False

