module RNATranscription exposing (toRNA)
import String exposing (..)
import List exposing (..)


toRNA : String -> Result Char String
toRNA dna =
    dna
    |> String.replace "G" "c"
    |> String.replace "C" "g"
    |> String.replace "T" "a"
    |> String.replace "A" "U"
    |> String.toUpper
    |> Ok