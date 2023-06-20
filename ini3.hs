import System.IO

-- slicing the string with given integer indices (a b c d)
stringSlice :: String -> Int -> Int -> Int -> Int -> (String, String)
stringSlice s a b c d = (take (b - a + 1) (drop a s), take (d - c + 1) (drop c s))

main :: IO ()
main = do
-- open the .txt file in read mode and get the file handle
  handle <- openFile "../data/rosalind_ini3.txt" ReadMode
-- read the first line of the file and store it in s
  s <- hGetLine handle
-- read the second line, split it in 4 integers stored in [a, b, c, d]
  [a, b, c, d] <- map read . words <$> hGetLine handle
-- sliced strings
  let (s1, s2) = stringSlice s a b c d
-- concatenate strings
  putStrLn $ s1 ++ " " ++ s2
  
  hClose handle