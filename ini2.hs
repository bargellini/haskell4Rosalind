main :: IO ()
main = do
  putStrLn "> "
  -- putStrLn prints the prompt for input. 
  aStr <- getLine
  -- getLine reads the input as a string
  putStrLn "> "
  bStr <- getLine
  
  let a = read aStr :: Int
      b = read bStr :: Int
      -- read converts the string input into an integer
      ans = (a ^ 2) + (b ^ 2)
  
  print ans