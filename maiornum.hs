maiornum :: [Int] -> Int

maiornum [] = error "Não existe número na lista"
maiornum [x] = x
maiornum (x:y:xs)
    | x > y = maiornum (x:xs)
    | otherwise = maiornum (y:xs)