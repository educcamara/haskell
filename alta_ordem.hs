module altaOrdem where

dobraD :: (a -> a -> a) -> a -> [a] -> a
{-\####FUNÇÃO DOBRA PELA DIREITA####
        Função(2 valores 'a' -> 'a') 
    -> valor 'a' base
    -> lista de 'a's
    -> Retorna valor compactado do tipo 'a'
-}
dobraD func y [x] = func x y
dobraD func y (x:xs) = func x (dobraD func y xs)

dobraE :: (a -> a -> a) -> a -> [a] -> a
{-\####FUNÇÃO DOBRA PELA DIREITA####
    Função(2 valores 'a' -> 'a') 
    -> valor 'a' base
    -> lista de 'a's
    -> Retorna valor compactado do tipo 'a'
-}
dobraE func y [x] = func y x
dobraE func y (x:xs) = dobraE func (func y x) xs



mapeia :: (a -> b) -> [a] -> [b]
{-\####FUNÇÃO MAPEIA####
    Função(Tipo 'a' -> Tipo 'b(iguais ou não))
    -> lista de 'a's
    -> Retorna lista do tipo 'b'
-}
mapeia func [] = []
mapeia func (x:xs) = func x : mapeia func xs



filtra :: (a -> Bool) -> [a] -> [a]
{-\####FUNÇÃO FILTRA####
    Função(Tipo 'a' -> Booleano)
    -> lista de 'a's
    -> Retorna lista do tipo 'a'
-}
filtra func [] = []
filtra func (x:xs)
    | func x = x : filtra func xs
    | otherwise = filtra func xs
