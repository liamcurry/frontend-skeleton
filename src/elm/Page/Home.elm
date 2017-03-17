module Page.Home exposing (view)

import Html exposing (Html)
import Model exposing (Model, Msg(..))
import View


view : Model -> Html Msg
view model =
    View.site model <| Html.text "Home"
