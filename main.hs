module Main where

-- Import all other Haskell files
import qualified Compare
import qualified CompareWithHundred  
import qualified DivideByTen
import qualified IsUpperCase
import qualified Maximum
import qualified Replicate
import qualified Sign
import qualified Take

main :: IO ()
main = do
    putStrLn "All modules imported successfully!"
    putStrLn "Available functions:"
    putStrLn "- compareWithHundred"
    putStrLn "- divideByTen" 
    putStrLn "- isUpperCase"
    putStrLn "- maximum'"
    putStrLn "- replicate'"
    putStrLn "- sign"
    putStrLn "- take'"
    putStrLn "- myCompare"
