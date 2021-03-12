mySqr :: [Int]
mySqr = [x^2 | x <- [1..5]]

myCube :: [Int]
myCube = [y^3 | y <- [1..5]]

both :: [(Int, Int)]
both = [(x, y) | x <- mySqr, y <- myCube, x < 50 && y < 50]

bothLength :: Int
bothLength = length both

