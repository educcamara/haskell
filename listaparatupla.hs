-- TUPLA COM PARES E IMPARES
-- _parImpar :: [Int] -> [Int] -> [Int] -> ([Int], [Int])
-- _parImpar [] par imp = (par, imp)
-- _parImpar (x:xs) par imp
--     | mod x 2 == 0 = _parImpar xs (x:par) imp
--     | otherwise = _parImpar xs par (x:imp)

-- parImp :: [Int] -> ([Int], [Int])
-- parImp lst = _parImpar lst [] []

parImp lst = ([x | x <- lst, even x], [y | y <- lst, odd y])