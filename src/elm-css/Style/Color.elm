module Style.Color exposing (..)

import Color
import Css exposing (Mixin, mixin)
import Style exposing (Config)


color : Color.Color -> Mixin
color c =
    mixin [ Css.color <| toCssColor c ]


text : Config -> Mixin
text =
    color << .colorText


brand1 : Config -> Mixin
brand1 =
    color << .colorBrand1


brand2 : Config -> Mixin
brand2 =
    color << .colorBrand2


success : Config -> Mixin
success =
    color << .colorSuccess


toCssColor : Color.Color -> Css.Color
toCssColor color =
    let
        rgba =
            Color.toRgb color
    in
        Css.rgba rgba.red rgba.green rgba.blue rgba.alpha
