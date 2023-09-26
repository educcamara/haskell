_divs :: Int -> Int -> [Int]
{-
####Função Auxiliar de Divisores####
    Int Original -> Int Variavel -> Lista de Ints (Divisores)
-}
_divs num var
    | num == var = [num]
    | mod num var == 0 = var : _divs num (var +1)
    | otherwise = _divs num (var +1)

divisores :: Int -> [Int]
{-
####FUNÇÃO DIVISORES####
    Inteiros -> Lista de seus Divisores
-}
divisores num = _divs num 1



sePrimo :: Int -> Bool
{-
####FUNÇÃO SE PRIMO####
    Inteiro -> É primo ou não (Bool)
-}
sePrimo num = divisores num == [1, num]



menorNum :: [Int] -> Int
{-
####FUNÇÃO MENOR NÚMERO####
    Lista de Int -> Inteiro (menor deles)
-}
menorNum [x] = x
menorNum (x:y:xs)
    | x < y = menorNum (x:xs)
    | otherwise = menorNum (y:xs)