module Test.Generated.Main253188219 exposing (main)

import Tests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "Tests" [Tests.tests] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 59305860753329, processes = 8, paths = ["/Users/kawamura/Exercism/elm/two-fer/tests/Tests.elm"]}