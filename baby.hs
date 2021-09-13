-- Following along in "Learn You a Haskell"
--http://learnyouahaskell.com/starting-out#ready-set-go

doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100
    then x
    else x*2

-- Add 1 to the above 
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

-- List notes
-- Using ++ to append to a list will force haskell to walk through the entirety of the list on the left
-- however using ':' to put something at the beginning of a list is instantaneous
-- Example:

-- 'A':" Small Cat"

-- lists can be nested
b = [[1,2,3,4],[5,6,7,8],[7,8,9,10]]

-- a list can be checked as empty or not by using "null"
-- example
-- null [1,2,3]
-- null []

-- Ranges
-- [1..20] is the same is writing a list of all numbers 1 through 20
-- ['a'..'z']
-- can specify steps
--[2,4..20] = all even numbers
--[3,6..20] etc.

-- List comprehensions
-- Here is a list comprehension that takes a range 1 to 10 and doubles each number in that range
-- [x*2 | x <-[1..10]]

-- now let's add a predicate (condition). 
-- Let's say we only want the elements that, when doubled are equal or greater than 12
-- conditions are separated from the binding parts by a comma
-- [x*2 | x <-[1..10], x*2 >= 12]

-- Weeding out lists by predicates is also called filtering. 
-- We take a list of numbers and filter them by a predicate

-- Let's say we want a comprehension that replaces each odd number greater than 10 with "BANG!" 
-- and each odd number that's less than 10 with "BOOM!". If a number isn't odd, we throw it out of our list. 

boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- can include several predicates

-- [x | x <- [10..20], x /= 13, x /= 15, x /= 19]

-- Can combine lists and multiply them
-- [x*y | x <- [2,5,10], y <- [8,10,11]]

-- a list comprehension that combines a list of adjectives and nouns
nouns = ["hobo", "frog", "pope"]
adjectives = ["lazy", "grouchy", "scheming"]
combineWords = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

-- write our own version of length

length' xs = sum [1 | _ <- xs]
-- "_" is a stand in for any variable because it doesn't matter
-- this function replaces every element in a list with 1 and then sums it up

-- because strings are list we can use list comprehensions to process and produce strings
-- a function that takes a string and removes everything except uppercase letters

removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- Tuples
-- Tuples are like lists, a way to store multiple values into a single value
-- Tuples are used when you know exactly how many values you want to combine and its type depends on how many 
-- components it has and the types of the components
-- Tuples don't have to be homogenous

-- a tuple of 2 is called a pair and is it's own type. Since lists can only contain one 
-- type, we can have a list of pairs which is perfect for vectors. 
-- tuples use parentheses
-- [(1,2), (8,11), (4,5)]

-- Tuples can also contain lists and we can create a type of tuple for say, a name and age combination:
-- ("Christopher", "Walken", 55)

-- Here's a problem that combines tuples and list comprehensions: which right triangle that has integers 
-- for all sides and all sides equal to or smaller than 10 has a perimeter of 24? First, 
-- let's try generating all triangles with sides equal to or smaller than 10:

triangles = [(a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10], a^2 + b^2 == c^2, a+b+c == 24]