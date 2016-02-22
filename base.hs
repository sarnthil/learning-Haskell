import Data.Char (intToDigit, chr, ord)
import Numeric (showIntAtBase)

n `inbase` b = showIntAtBase b numtoletter n ""

numtoletter :: Int -> Char
numtoletter n
  | n < 10 = intToDigit n
  | otherwise = chr (ord 'a'+ n - 10)

main :: IO ()
main = do
  putStrLn $ 8 `inbase` 12
