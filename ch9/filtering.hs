isMultipleOf :: Int -> Int -> Bool
isMultipleOf x y = y `mod` x == 0

isMultipleOf3 :: Int -> Bool
isMultipleOf3 = isMultipleOf 3

-- 1
multiplesOf3 :: [Int]
multiplesOf3 = filter isMultipleOf3 [1..30]

-- 2
lengthOfMultiplesOf3 :: Int
lengthOfMultiplesOf3 = length multiplesOf3

-- 3
articles :: [String]
articles = ["the", "a", "an"]

flipElem = flip elem

separateAndRemoveArticles :: String -> [String]
separateAndRemoveArticles = filter (not . (flipElem articles)) . words
