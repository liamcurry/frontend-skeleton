module Style.Text
    exposing
        ( left
        , center
        , right
        , upper
        , lower
        , noSelect
        )

import Css exposing (..)


left : Mixin
left =
    textAlign Css.left


center : Mixin
center =
    textAlign Css.center


right : Mixin
right =
    textAlign Css.right


upper : Mixin
upper =
    textTransform uppercase


lower : Mixin
lower =
    textTransform lowercase


noSelect : Mixin
noSelect =
    property "user-select" "none"
