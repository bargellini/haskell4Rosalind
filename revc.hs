import System.IO


-- the reverseComplement function takes a DNA string as input and generates its reverse complement
reverseComplement :: String -> String
-- the reverse function is used to reverse the string, 
-- and the map function is used to apply the complement function to each symbol
reverseComplement = reverse . map complement
  where
    complement 'A' = 'T'
    complement 'T' = 'A'
    complement 'C' = 'G'
    complement 'G' = 'C'
    complement symbol = symbol
    -- the complement function maps 'A' to 'T', 'T' to 'A', 'C' to 'G', 'G' to 'C'

main :: IO ()
main = do
  -- reads the input DNA string from the input file
  dnaString <- readFile "/data/rosalind_revc.txt"
  -- generates the reverse complement of the DNA string using the `reverseComplement` function
  let reverseComp = reverseComplement dnaString
  -- writes the reverse complement to the output file
  writeFile "/data/rosalind_revc_r.txt" reverseComp