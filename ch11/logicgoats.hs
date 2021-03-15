{-# LANGUAGE FlexibleInstances #-}

main :: IO ()
main = return ()

class TooMany a where
  tooMany :: a -> Bool

instance TooMany (Int, String) where
  tooMany (_, _) = True

instance TooMany (Int, Int) where
  tooMany (a, b) = False

instance TooMany (Num a, TooMany a) => (a, a) where
  tooMany (_, _) = False
