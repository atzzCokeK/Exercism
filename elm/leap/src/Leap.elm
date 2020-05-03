module Leap exposing (isLeapYear)

-- isDivisibleBy4 : Int -> Bool
-- isDivisibleBy4 year =
--     if year // 4 == 0 then
--         True
--     else
--         False
-- isDivisibleBy100 : Int -> Bool
-- isDivisibleBy100 year =
--     if year // 100 == 0 then
--         True
--     else
--         False
-- isDivisibleBy400 : Int -> Bool
-- isDivisibleBy400 year =
--     if year // 400 == 0 then
--         True
--     else
--         False
-- isLeapYear : Int -> Bool
-- isLeapYear year =
--     isDivisibleBy4 year && not (isDivisibleBy100 year) || isDivisibleBy400 year


isLeapYear : Int -> Bool
isLeapYear year =
    divBy 4 year && (not (divBy 100 year) || divBy 400 year)


divBy : Int -> Int -> Bool
divBy amount year =
    year // amount == 0
