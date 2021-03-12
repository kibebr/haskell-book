import Data.Char

-- 2
removeLowercase :: String -> String
removeLowercase = filter isUpper

--3
capitalizeFirst :: String -> String
capitalizeFirst (x:xs) = toUpper x : xs

--4
recursiveCapitalize :: String -> String
recursiveCapitalize [] = []
recursiveCapitalize (x:xs) = toUpper x : recursiveCapitalize xs

--5
headAndCapitalize :: String -> Char
headAndCapitalize = toUpper . head
