import Data.Char

ocorrencia :: Eq a => [a] -> a -> Int
{-
####FUNÇÃO OCORRÊNCIA####
    Lista de 'a' -> Tipo 'a' -> Inteiro (quantidade)
-}
ocorrencia [] e = 0
ocorrencia (x:xs) e
    | x == e = 1 + ocorrencia xs e
    | otherwise = ocorrencia xs e

removeDup :: Eq a => [a] -> [a]
removeDup [] = []
removeDup (x:xs)
    | ocorrencia (x:xs) x == 1 =  x : removeDup xs
    | otherwise = removeDup xs