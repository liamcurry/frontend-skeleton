module Stylesheet exposing (stylesheet)

import Css
import Style.Config
import Style.Layout
import Style.Text
import Style.Font


stylesheet : Style.Config.Config -> Css.Stylesheet
stylesheet cfg =
    [ Style.Layout.css
    , Style.Text.css
    , Style.Font.css cfg
    ]
        |> List.concat
        |> Css.stylesheet
