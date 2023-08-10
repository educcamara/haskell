contarnum :: [Int] -> Int
-- contarnum = length

contarnum [] = 0
contarnum (x:xs) = 1 + contarnum xs

contarpares :: [Int] -> Int
contarpares [] = 0
contarpares (x:xs)
    | even x = 1 + contarpares xs
    | otherwise = contarpares xs

contarimpares :: [Int] -> Int
contarimpares [] = 0
contarimpares (x:xs)
    | odd x = 1 + contarimpares xs
    | otherwise = contarimpares xs