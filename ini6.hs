import System.IO
import Data.Map (Map)
import qualified Data.Map as Map

-- countOccurrences function counts the occurrences of each word in a string. 
-- it uses the words function to split the string into a list of words and then uses 
-- foldr to increment the count for each word in a Map data structure
countOccurrences :: String -> Map String Int
countOccurrences = foldr incrementCount Map.empty . words
  where
    incrementCount word = Map.insertWith (+) word 1
    -- incrementCount function inserts the word into the map, 
    -- incrementing the count by 1 if the word already exists

main :: IO ()
main = do
  inputString <- readFile "/data/rosalind_ini6.txt"
  let occurrences = countOccurrences inputString
  writeFile "/data/rosalind_ini6_r.txt" (formatOccurrences occurrences)

-- formatOccurrences converts map of word occurrences into a formatted string representation.
-- using Map.toList to convert map into a list of key-value pairs. 
-- map is then used to format each pair as "word count"
-- unlines joins the formatted pairs with newline characters.
formatOccurrences :: Map String Int -> String
formatOccurrences = unlines . map formatPair . Map.toList
  where
    formatPair (word, count) = word ++ " " ++ show count