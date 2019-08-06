module TwoFer exposing (twoFer)


twoFer : Maybe String -> String
twoFer input =
    case input of
        Nothing ->
            "One for you, one for me."

        Just name ->
            "One for " ++ name ++ ", one for me."
