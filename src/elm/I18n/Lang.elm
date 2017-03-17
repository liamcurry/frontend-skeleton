module I18n.Lang exposing (..)

import Json.Decode as D
import Json.Decode.Extra as D
import Json.Encode as E


type Lang
    = En
    | De
    | Fr
    | Ru
    | Ze



-- Chinese


fromString : String -> Result String Lang
fromString str =
    case String.toLower <| String.left 2 str of
        "en" ->
            Ok En

        "de" ->
            Ok De

        "fr" ->
            Ok Fr

        "ru" ->
            Ok Ru

        "ze" ->
            Ok Ze

        _ ->
            Err ("'" ++ str ++ "' is not a supported language code.")


asString : Lang -> String
asString lang =
    case lang of
        En ->
            "en"

        De ->
            "de"

        Fr ->
            "fr"

        Ru ->
            "ru"

        Ze ->
            "ze"


langDecoder : D.Decoder Lang
langDecoder =
    D.customDecoder D.string fromString


encodeLang : Lang -> E.Value
encodeLang =
    E.string << asString
