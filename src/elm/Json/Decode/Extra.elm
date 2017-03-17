module Json.Decode.Extra exposing (..)

import Date exposing (Date)
import Json.Decode exposing (..)
import String


customDecoder : Decoder b -> (b -> Result String a) -> Decoder a
customDecoder decoder toResult =
    andThen
        (\a ->
            case toResult a of
                Ok b ->
                    succeed b

                Err err ->
                    fail err
        )
        decoder


{-| List decoder that filters out any invalid items. This is to prevent the
whole decoder from failing if an item comes back with unexpected data. Beware
that this will cause invalid items to fail silently.
-}
listWithFailsafe : Decoder a -> Decoder (List a)
listWithFailsafe decoder =
    customDecoder (list <| maybe decoder)
        (Ok << List.filterMap identity)


timestamp : Decoder Date
timestamp =
    customDecoder float (\i -> i * 1000 |> Date.fromTime |> Ok)


date : Decoder Date
date =
    customDecoder string Date.fromString


anyDate : Decoder Date
anyDate =
    oneOf [ timestamp, date ]


toBool : String -> Result String Bool
toBool str =
    let
        lowerStr =
            String.toLower str
    in
        if List.member lowerStr [ "true", "yes", "1" ] then
            Ok True
        else if List.member lowerStr [ "false", "no", "0" ] then
            Ok False
        else
            Err ("'" ++ str ++ "' is not a bool value")


boolString : Decoder Bool
boolString =
    customDecoder string toBool


anyBool : Decoder Bool
anyBool =
    oneOf [ bool, boolString ]


intString : Decoder Int
intString =
    customDecoder string String.toInt


largeInt : Decoder Int
largeInt =
    customDecoder float (\f -> f |> truncate |> Ok)


anyInt : Decoder Int
anyInt =
    oneOf [ int, intString, largeInt ]


floatString : Decoder Float
floatString =
    customDecoder string String.toFloat


anyFloat : Decoder Float
anyFloat =
    oneOf [ float, floatString ]
