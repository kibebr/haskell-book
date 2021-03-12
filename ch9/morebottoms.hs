import Data.Bool

mapBool :: [Int]
mapBool = (<$>) (\x -> bool x (-x) (x == 3)) [1..10]

