module Accumulate exposing (accumulate)
import List


accumulate : (a -> b) -> List a -> List b
accumulate func input =
   case input of
    [] -> 
        []
    x :: xs ->
        (func x) :: (accumulate func xs)