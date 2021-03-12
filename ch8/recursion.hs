sumAll :: (Eq a, Num a) => a -> a
sumAll n
  | n == 0 = 0
  | otherwise = (+) n $ sumAll $ n - 1

--3
mult :: (Integral a) => a -> a -> a
mult x y
  | y == 0 = 0
  | otherwise = (+) x $ mult x $ y - 1

--4
mc91 :: Int -> Int
mc91 x 
  | x > 100 = x - 10
  | otherwise = mc91 . mc91 $ x + 11
