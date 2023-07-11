import System.IO

-- Defining a function to transcribe a DNA string into an RNA string
transcribeRNA :: String -> String
-- Using map to apply the transcribe function to each symbol in the input string
transcribeRNA = map transcribe
  where
    transcribe 'T' = 'U'
    transcribe symbol = symbol

main :: IO ()
main = do
  -- Read the input DNA string from the input file
  dnaString <- readFile "/data/rosalind_rna.txt"
  -- Transcribe the DNA string into an RNA string using the `transcribeRNA` function
  let rnaString = transcribeRNA dnaString
  -- Write the transcribed RNA string to the output file
  writeFile "/data/rosalind_rna_r.txt" rnaString