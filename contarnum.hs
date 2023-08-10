contarnum :: [Int] -> Int
-- contarnum = length

contarnum [] = 0
contarnum (x:xs) = 1 + contarnum xs