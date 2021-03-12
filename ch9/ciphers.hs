module Cipher where
  import Data.Char
  
  shift :: Int -> Char -> Char
  shift n c = chr $ (+) index $ mod n 122
    where index = if isUpper c then 65 else 97

  cipher :: Int -> String -> String
  cipher n s = (<$>) (shift n) s

