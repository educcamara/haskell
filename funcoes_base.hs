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
    Recebe Inteiros e Retorna seus Divisores
-}
divisores num = _divs num 1



sePrimo :: Int -> Bool
{-
####FUNÇÃO SE PRIMO####
    Recebe um inteiro e retorna se é primo ou não
-}
sePrimo num = divisores num == [1, num]



