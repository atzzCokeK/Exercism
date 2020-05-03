module Leap exposing (isLeapYear)


isDivisible : Int -> Int -> Bool
isDivisible num year =
    if remainderBy num year == 0 then
        True

    else
        False


isLeapYear : Int -> Bool
isLeapYear year =
    isDivisible 4 year && (not (isDivisible 100 year) || isDivisible 400 year)
