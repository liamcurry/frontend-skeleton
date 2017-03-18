module Style.Layout
    exposing
        ( block
        , row
        , rowReverse
        , col
        , colReverse
        , flex
        , alignCenter
        , justifyCenter
        , justifyContent
        )

import Css exposing (..)


block : Mixin
block =
    display Css.block


layout : Mixin
layout =
    displayFlex


row : Mixin
row =
    mixin
        [ layout
        , flexDirection Css.row
        ]


rowReverse : Mixin
rowReverse =
    mixin
        [ layout
        , flexDirection Css.rowReverse
        ]


col : Mixin
col =
    mixin
        [ layout
        , flexDirection Css.column
        ]


colReverse : Mixin
colReverse =
    mixin
        [ layout
        , flexDirection Css.columnReverse
        ]


flex : Int -> Mixin
flex i =
    Css.flex3 (int i) zero zero


alignCenter : Mixin
alignCenter =
    alignItems center


justifyContent : String -> Mixin
justifyContent =
    property "justify-content"


justifyCenter : Mixin
justifyCenter =
    justifyContent "center"


justifyBetween : Mixin
justifyBetween =
    justifyContent "between"
