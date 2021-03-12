tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10

--2
foldBool :: a -> a -> Bool -> a
foldBool x y b = if b then y else x

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y b
  | b = y
  | otherwise = x

--3
g :: (a -> b) -> (a, c) -> (b, c)
g f (x, y) = (f x, y)

--4
roundTrip :: (Show a, Read a) => a -> a
roundTrip = read . show
