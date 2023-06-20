main :: IO ()
main = do
  putStrLn "> "
-- putStrLn prints the prompt for input. 
  aStr <- getLine
    -- getLine reads the input as a string
  putStrLn "> "
  bStr <- getLine

-- read converts the string input into an integer
  let a = read aStr :: Int
      b = read bStr :: Int
      ans = sumOddNumbers a b

  print ans

sumOddNumbers :: Int -> Int -> Int
-- list comprehension to generate a list of odd numbers within the range [a, b]
sumOddNumbers a b = sum [i | i <- [a..b], odd i]
-- calculate the sum of numbers in the list