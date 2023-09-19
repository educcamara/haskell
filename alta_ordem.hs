dobraD :: (a -> a -> a) -> a -> [a] -> a
{-\####FUNÇÃO DOBRA PELA DIREITA####
    Função de Alta Ordem que recebe uma função, valor auxiliar e
    uma lista que será compactada a um único valor da direita para a esquerda
-}
dobraD func y [x] = func x y
dobraD func y (x:xs) = func x (dobraD func y xs)

dobraE :: (a -> a -> a) -> a -> [a] -> a
{-\####FUNÇÃO DOBRA PELA DIREITA####
    Função de Alta Ordem que recebe uma função, valor auxiliar e
    uma lista que será compactada a um único valor da esquerda para a direita
-}
dobraE func y [x] = func y x
dobraE func y (x:xs) = dobraE func (func y x) xs