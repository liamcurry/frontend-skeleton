module Model exposing (..)

import I18n.Lang as I18n
import Json.Decode as Decode
import Json.Decode.Pipeline as Decode
import Navigation
import Route
import Time


type alias Flags =
    { now : Time.Time
    , lang : I18n.Lang
    }


flagsDecoder : Decode.Decoder Flags
flagsDecoder =
    Decode.decode Flags
        |> Decode.required "now" Decode.float
        |> Decode.required "lang" I18n.langDecoder


type alias Model =
    { route : Route.Route
    , now : Time.Time
    , lang : I18n.Lang
    }


emptyModel : Model
emptyModel =
    { route = Route.Error404 Nothing
    , now = 0
    , lang = I18n.En
    }


type Msg
    = NoOp
    | GoTo Route.Route
    | UrlChange Navigation.Location
