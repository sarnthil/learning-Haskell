-- cabal install split --
import Data.List.Split (splitOn)
main = do
  input <- readFile "terry.txt"
  let ls = lines input
  print $ ls
  let ws = words $ ls !! 2
  print ws
  let cs = splitOn "," $ ls !! 3
  print cs
  let ds = splitOn "an" $ ls !! 4
  print ds
