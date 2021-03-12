myOr :: [Bool] -> Bool
myOr = elem True

myAny :: (a -> Bool) -> [a] -> Bool
myAny f xs = elem True $ (<$>) f xs

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem t (x:xs) = if t == x then True else myElem t xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain xs = squishMap (\x -> [x]) xs

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a

