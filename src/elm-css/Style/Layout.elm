module Style.Layout exposing (..)

import Css exposing (..)
import Css.Elements exposing (html, body)
import Style exposing (Class(..))


css : List Snippet
css =
    [ everything
        [ margin zero
        , padding zero
        , boxSizing borderBox
        ]
    , Css.each [ html, body ] [ height <| pct 100 ]
    , body [ layout, col ]
    , class Row [ layout, row ]
    , class RowReverse [ layout, rowReverse ]
    , class Col [ layout, col ]
    , class ColReverse [ layout, colReverse ]
    , class EqualChildren [ children [ everything [ flex 1 ] ] ]
    , class Flex1 [ flex 1 ]
    , class Flex2 [ flex 2 ]
    , class Flex3 [ flex 3 ]
    , class Flex4 [ flex 4 ]
    , class Flex5 [ flex 5 ]
    , class Flex6 [ flex 6 ]
    , class Flex7 [ flex 7 ]
    , class Flex8 [ flex 8 ]
    , class Flex9 [ flex 9 ]
    , class Flex10 [ flex 10 ]
    , class Flex11 [ flex 11 ]
    , class Flex12 [ flex 12 ]
    , class AlignCenter [ alignCenter ]
    , class JustifyCenter [ justifyCenter ]
    , class JustifyBetween [ justifyBetween ]
    ]


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
