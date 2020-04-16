module Bob exposing (hey)

import Char
import String

isWhitespace : String -> Bool
isWhitespace str =
    str
        |> String.trim
        |> String.isEmpty

isQuestion : String -> Bool
isQuestion str =
   str
        |> String.trim
        |> String.endWith "?" str

isShouting : String -> Bool
isShouting str =




hey : String -> String
hey remark = 
    if isWhitespace remark then 
        "Fine. Be that way!"
    else if isQuestion remark then
        "Sure."
    else if 
    

module Tests exposing (anyCharacter, character, gibberish, gibberishQuestion, listOfCharacters, tests, uppercaseCharacter, uppercaseGibberish)

import Bob
import Char
import Expect
import Random
import String
import Test exposing (..)


                Expect.equal "Whatever."
                    (Bob.hey "Tom-ay-to, tom-aaaah-to.")
                    Expect.equal
                        "Whoa, chill out!"
                        (Bob.hey "WATCH OUT!")
                    Expect.equal
                        (Bob.hey (uppercaseGibberish 10))
                    Expect.equal
                        "Sure."
                        (Bob.hey "Does this cryogenic chamber make me look fat?")
                    Expect.equal
                        "Sure."
                        (Bob.hey "You are, what, like 15?")
                    Expect.equal
                        "Sure."
                        (Bob.hey (gibberishQuestion 20))
                    Expect.equal
                        "Whatever."
                        (Bob.hey "Let's go make out behind the gym!")
                    Expect.equal
                        "Whatever."
                        (Bob.hey "It's OK if you don't want to go to the DMV.")
                    Expect.equal
                        "Calm down, I know what I'm doing!"
                        (Bob.hey "WHAT THE HELL WERE YOU THINKING?")
                        "Whoa, chill out!"
                        (Bob.hey "1, 2, 3 GO!")
                        "Whatever."
                        (Bob.hey "1, 2, 3")
                        "Sure."
                        (Bob.hey "4?")
                        "Whoa, chill out!"
                        (Bob.hey "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!")
                        "Whoa, chill out!"
                        (Bob.hey "I HATE YOU")
                        "Whatever."
                        (Bob.hey "Ending with ? means a question.")
                        "Sure."
                        (Bob.hey "Wait! Hang on. Are you going to be OK?")
                        "Fine. Be that way!"
                        (Bob.hey "")
                        "Fine. Be that way!"
                        (Bob.hey "       ")
                        "Fine. Be that way!"
                        (Bob.hey "\t  \n  \t   ")
                        "Whatever."
                        (Bob.hey "\nDoes this cryogenic chamber make me look fat?\nno")
                        (Bob.hey "Okay if like my  spacebar  quite a bit?   ")
                        "Whatever."
                        (Bob.hey "1, 2, 3")
                        "Whatever."
                        (Bob.hey "Ending with ? means a question.")
                        "Whatever."
                        (Bob.hey "         hmmmmmmm...")
                        "Fine. Be that way!"
                        (Bob.hey "\n\u{000D} \t")
                        "Whatever."
                        (Bob.hey "This is a statement ending with whitespace      ")
        ]


character : Int -> Int -> Random.Generator Char
character start end =
    Random.map Char.fromCode (Random.int start end)
anyCharacter : Random.Generator Char
anyCharacter =
    character 32 126
uppercaseCharacter : Random.Generator Char
uppercaseCharacter =
    character 65 90


listOfCharacters : Int -> Random.Generator Char -> Random.Generator (List Char)
listOfCharacters length characterList =
    Random.list length characterList


gibberish : Int -> Random.Generator Char -> String
gibberish length characterList =
    Tuple.first (Random.step (Random.map String.fromList (listOfCharacters length characterList)) (Random.initialSeed 424242))


uppercaseGibberish : Int -> String
uppercaseGibberish length =
    gibberish length uppercaseCharacter


gibberishQuestion : Int -> String
gibberishQuestion length =
    gibberish length anyCharacter ++ "?"
