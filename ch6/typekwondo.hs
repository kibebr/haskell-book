--1
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = (==) b b

--2
arith :: Num b => (a -> b) -> Integer -> a -> b
arith f x y = f y
