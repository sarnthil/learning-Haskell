module Main where

import System.IO

main = do
  theInput <- readFile "input.txt"
  putStrLn (countLines theInput)

countLines :: String -> String
countLines str = (show (length (lines str)))