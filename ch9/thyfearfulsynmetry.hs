deleteUntil :: Char -> String -> String
deleteUntil d = drop 1 . dropWhile (/=d)

getUntil :: Char -> String -> String
getUntil d = takeWhile (/=d)

deleteWord :: String -> String
deleteWord = deleteUntil ' '

getWord :: String -> String
getWord = getUntil ' '

deleteLine :: String -> String
deleteLine = deleteUntil '\n'

_getLine :: String -> String
_getLine = getUntil '\n'

myWords :: String -> [String]
myWords [] = []
myWords s = getWord s : (myWords $ deleteWord s)

myLines :: String -> [String]
myLines [] = []
myLines s = _getLine s : (myLines $ deleteLine s)
