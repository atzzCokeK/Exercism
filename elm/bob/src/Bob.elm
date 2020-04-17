module Bob exposing (hey)

import String


hey : String -> String
hey remark =
    let
        trimedRemark =
            String.trim remark

        theEndChar =
            String.right 1 trimedRemark
    in
    case theEndChar of
        "?" ->
            if String.toUpper trimedRemark == trimedRemark && not (String.toLower trimedRemark == trimedRemark) then
                "Calm down, I know what I'm doing!"

            else
                "Sure."

        "" ->
            "Fine. Be that way!"

        _ ->
            if String.toUpper trimedRemark == trimedRemark && not (String.toLower trimedRemark == trimedRemark) then
                "Whoa, chill out!"

            else
                "Whatever."
