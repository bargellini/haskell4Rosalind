import Data.List (group)

countSymbols :: String -> (Int, Int, Int, Int)
countSymbols dnaString = (count 'A', count 'C', count 'G', count 'T')
  where
    count symbol = length $ filter (== symbol) dnaString

main :: IO ()
main = do
-- read content of the file "rosalind_dna.txt" and assign it to the variable 'contents'
  dnaString <- readFile "/data/rosalind_dna.txt"
-- countSymbols function now directly filters the input dnaString
-- and counts the occurrences of each symbol using the filter and length functions.
  let (aCount, cCount, gCount, tCount) = countSymbols dnaString
      result = show aCount ++ " " ++ show cCount ++ " " ++ show gCount ++ " " ++ show tCount
  writeFile "/data/rosalind_dna_r.txt" result
-- the writeFile function is used to write the result string to a text file
-- which will be created or overwritten if it already exists.