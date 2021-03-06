import Data.Time
import Data.Maybe

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


getDbDate :: DatabaseItem -> Maybe UTCTime
getDbDate (DbDate c) = Some c
getDbDate _ = None

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate db = filter 
