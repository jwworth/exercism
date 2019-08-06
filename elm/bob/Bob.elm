module Bob exposing (hey)

import Char exposing (isAlpha)
import List exposing (all)
import String exposing (any, endsWith, isEmpty, lines, toUpper, trim, words)


hey : String -> String
hey remark =
    let
        trimmed_remark =
            trim remark
    in
    if isAllCaps trimmed_remark && isQuestion trimmed_remark then
        "Calm down, I know what I'm doing!"

    else if isAllCaps trimmed_remark then
        "Whoa, chill out!"

    else if isQuestion trimmed_remark then
        "Sure."

    else if isWhitespace trimmed_remark then
        "Fine. Be that way!"

    else
        "Whatever."


isAllCaps : String -> Bool
isAllCaps str =
    any isAlpha str
        && toUpper str
        == str


isQuestion : String -> Bool
isQuestion str =
    endsWith "?" str


isWhitespace : String -> Bool
isWhitespace str =
    all isEmpty (words str)
