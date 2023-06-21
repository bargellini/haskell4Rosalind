import System.IO

main :: IO ()
main = do
  -- read content of the file "rosalind_ini5.txt" and assign it to the variable 'contents'
  contents <- readFile "/data/rosalind_ini5.txt"
  
  -- split the content into lines and assign it to the variable 'file'
  let file = lines contents
  
      -- create a list 'oddLines' that contains the odd-indexed lines from 'file'
      -- 'zip' function pairs each line with its corresponding index
      -- list comprehension that filters the lines by selecting only those with odd indices
      oddLines = [x | (index, x) <- zip [0..] file, odd index]
  
  -- write in 'oddLines' to "INI5_RESULT.txt"
  writeFile "/data/INI5_RESULT.txt" (unlines oddLines)