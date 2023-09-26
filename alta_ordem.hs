module AltaOrdem where

dobraD :: (a -> b -> b) -> b -> [a] -> b
{-\####FUNÇÃO DOBRA PELA DIREITA####
        Função('a' -> 'b' -> 'b') 
    -> valor 'b' base
    -> lista de 'a's
    -> Retorna valor compactado do tipo 'b'
-}
dobraD func y [x] = func x y
dobraD func y (x:xs) = func x (dobraD func y xs)

dobraE :: (b -> b -> a) -> b -> [a] -> b
{-\####FUNÇÃO DOBRA PELA DIREITA####
    Função('b' -> 'a' -> 'a') 
    -> valor 'b' base
    -> lista de 'a's
    -> Retorna valor compactado do tipo 'b'
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
