-- https://www.codewars.com/kata/5f70c883e10f9e0001c89673
-- List sorting.
-- Need to bring in a library to our code. The Data.List type. 
import Data.List 

-- When we define a function it will return the type that is on the far right. In this case, an Int
-- The other two types, are inputs
-- gravityFlip :: Char -> [Int] -> [Int]

-- Below, we define the function. 'd' represents the Char input, "xs" represents the [Int] input
-- need a sorting aalgorithm
-- gravityFlip d xs
--     | d == 'R' = sort xs -- if 'd' == 'R' then sort the Int array
--     | d == 'L' = reverse (sort xs)

-- Alternate (cleaner) solution
gravityFlip :: Char -> [Int] -> [Int]
gravityFlip 'R' = sort
gravityFlip 'L' = reverse . sort -- = reverse (sort xs) the dot means first do the sort op then do the reverse
-- the '.' means take whatever the output is of that function and pass it to the function on the left
-- For nested function calls