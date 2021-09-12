-- https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/haskell
evenOrOdd :: Integral a => a -> [Char]

-- the function "div" is integer division. It takes 2 integers and returns an integer
-- '/' returns a float

-- Function has the highest priority. In the below example "()" are not needed around (div n 2)
-- because function has the highest priority
evenOrOdd n = if 2 * div n 2 == n then "Even" else "Odd" 

-- Better solution
-- evenOrOdd n = if even n then "Even" else "Odd" 

-- Other solution
-- " | " is how to put in logic conditions
-- evenOrOdd n 
--   | odd n     = "Odd" -- if Odd n
--   | otherwise = "Even" -- else

-- -- Example of the logic vertical pipe
-- threeOrNine n
--     | True = 3 -- if this logic turns out to be true, it will return this 
--     | otherwise = 9 -- "otherwise" handles all other cases

threeOrNine :: (Ord a, Num a, Num p) => a -> p
threeOrNine n
    | n < 0 = 3
    | n < 5 = 9
    | otherwise = 3333


-- Recursive solution
-- evenOrOdd 0 = "Even" -- base caese
-- evenOrOdd 1 = "Odd" -- base case
-- evenOrOdd n = evenOrOdd (n `mod` 2) -- recursive call