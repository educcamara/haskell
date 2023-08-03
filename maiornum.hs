maior2 :: Int -> Int -> Int
maior2 num1 num2
    | num1 > num2 = num1
    | otherwise = num2

-- maior3 :: Int -> Int -> Int -> Int
-- maior3 num1 num2 num3 = maior2 num1 (maior2 num2 num3)

-- maior5 :: Int -> Int -> Int -> Int -> Int -> Int
-- maior5 num1 num2 num3 num4 num5 = maior2 (maior3 num1 num2 num3) (maior2 num4 num5)

maiornum :: [Int] -> Int
maiornum lista
    | length lista == 1 = head lista
    | otherwise = maior2 (head lista) (maiornum(tail lista))
