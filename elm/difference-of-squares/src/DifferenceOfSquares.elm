module DifferenceOfSquares exposing (difference, squareOfSum, sumOfSquares)
import List exposing (range,sum, repeat, map)


squareOfSum : Int -> Int
squareOfSum num =
    num
    |> range 0
    |> sum
    |> (\x -> x^2)

sumOfSquares : Int -> Int
sumOfSquares num =
    num
    |> range 0
    |> map (\x -> x^2)
    |> sum

difference : Int -> Int
difference num =
   squareOfSum num - sumOfSquares num
