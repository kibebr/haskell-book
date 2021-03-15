import Data.Time
import Data.List

data DatabaseItem 
  = DbString String
  | DbNumber Integer
  | DbDate UTCTime
  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime
    (fromGregorian 1911 5 1)
    (secondsToDiffTime 34123))
  , DbNumber 9001
  , DbString "Hello, world!"
  , DbDate (UTCTime
    (fromGregorian 1921 5 1)
    (secondsToDiffTime 34123))
  ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate xs = [ x | DbDate x <- xs ]

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber xs = [ x | DbNumber x <- xs ]

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = minimum . filterDbDate

sumDb :: [DatabaseItem] -> Integer
sumDb = sum . filterDbNumber

average :: [Integer] -> Double
average xs = fromIntegral $ sum xs `div` len
  where len = fromIntegral $ length xs

avgDb :: [DatabaseItem] -> Double
avgDb = average . filterDbNumber
