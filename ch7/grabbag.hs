-- 3
  -- a
addOneIfOdd :: Integer -> Integer
addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where f = (\x -> (+1) x)

  -- b
addFive :: Integer -> Integer -> Integer
addFive = (\x -> (\y -> (+5) $ min x y))

_addFive :: Integer -> Integer -> Integer
_addFive = min . (+5)

  -- c
mflip :: (a -> b -> c) -> (b -> a -> c)
mflip f x y = f y x
