module Page.Settings exposing (view)

import Html exposing (Html)
import Model exposing (Model, Msg(..))
import View.Site


view : Model -> Html Msg
view model =
    View.Site.view model <| Html.text "Settings"
