-- RESTO DE UM COM O PROXIMO
restoComProx :: [Int] -> [Int]
restoComProx [x,y] = [mod x y]
restoComProx (x:y:xs) = mod x y : restoComProx (y:xs)