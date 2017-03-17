module Main exposing (..)

import Json.Decode
import Model exposing (Model, Msg(UrlChange))
import Navigation
import Page
import State


main : Program Json.Decode.Value Model Msg
main =
    Navigation.programWithFlags UrlChange
        { init = State.init
        , view = Page.view
        , update = State.update
        , subscriptions = State.subscriptions
        }
