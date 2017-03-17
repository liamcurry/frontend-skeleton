module State exposing (..)

import Json.Decode as Decode
import Model exposing (Model, emptyModel, Msg(..))
import Navigation
import Route


init : Decode.Value -> Navigation.Location -> ( Model, Cmd Msg )
init flagsValue location =
    case Decode.decodeValue Model.flagsDecoder flagsValue of
        Ok { now, lang } ->
            { emptyModel
                | now = now
                , lang = lang
                , route = Route.parse location
            }
                ! []

        Err err ->
            let
                _ =
                    Debug.log "Invalid flags" err
            in
                emptyModel ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlChange location ->
            { model | route = Route.parse location } ! []

        GoTo route ->
            model ! [ Navigation.newUrl <| Route.print route ]

        _ ->
            model ! []


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
