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