-- https://www.codewars.com/kata/57a429e253ba3381850000fb

-- Write function bmi that calculates body mass index (bmi = weight / height2).

-- if bmi <= 18.5 return "Underweight"

-- if bmi <= 25.0 return "Normal"

-- if bmi <= 30.0 return "Overweight"

-- if bmi > 30 return "Obese"

-- We will be using the logic vertical bar for this
-- initial solution
-- bmi :: Float -> Float -> String  
-- bmi w h
--     | w/h^2 <= 18.5 = "Underweight"
--     | w/h^2 <= 25.0 = "Normal"
--     | w/h^2 <= 30.0 = "Overweight"
--     | w/h^2 > 30 = "Obese"

-- Improvement #1
-- remove repeated call to "w/h^2" buy using "where"
-- Also want a catch all "otherwise" call
bmi :: Float -> Float -> String  
bmi w h
    | bmi_calc <= 18.5 = "Underweight"
    | bmi_calc <= 25.0 = "Normal"
    | bmi_calc <= 30.0 = "Overweight"
    | otherwise = "Obese" 
    where bmi_calc = w/h^2

