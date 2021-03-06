-- | Problem8.hs
module Problem8 where

-- | compresslist
compresslist :: Eq a => [a] -> [a]
compresslist [] = []
compresslist (x:xs) = x : compresslist (dropWhile (== x) xs )

compresslistpass :: Eq a => [a] -> [a]
compresslistpass list = compresslistpassagain list []

compresslistpassagain :: Eq a => [a] -> [a] -> [a]
compresslistpassagain [] r = r
compresslistpassagain (x:xs) r = compresslistpassagain (dropWhile (== x) xs) (r ++ [x])

test1 = pack [1,1,1,2,2,2,3,3,3]
test2 = pack '(aaaaaabbbbbbbbbbccccddd)'

