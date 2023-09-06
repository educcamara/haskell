-- FUNCOES DE ALTA ORDEM
{-
    Passa a incorporar o conjunto de funcoes no preludio: 
    conjunto de funcoes basicas que acompanham o programa haskell

    Conceito de Alta Ordem:
    Trata-la como um proprio objeto do preludio
    FUncao pode ser tratada como argumento/ parametro

    Funcao que produz uma funcao como saida

-}

aplica :: (Int -> Int) -> [Int] -> [Int]
aplica func [] = []
aplica func (x:xs) = func x : aplica func xs

dobro :: Int -> Int
dobro x = 2 * x

metadeInt :: Int -> Int
metadeInt x = div x 2

quadrado :: Int -> Int
quadrado x = x^2

filtra :: (Int -> Bool) -> [Int] -> [Int]
filtra func [] = []
filtra func (x:xs)
    | func x = x : filtra func xs
    | otherwise = filtra func xs

ehPar x = mod x 2 == 0

ehImpar x = mod x 2 /= 0

reduz :: (Int -> Int -> Int) -> [Int] -> Int
reduz func [x] = x
reduz func (x:xs) = func x (reduz func xs)

soma x y = x + y

subtrai x y = x - y

multiplica x y = x*y

divideInt x y = div x y