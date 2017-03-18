module Styles.Elements exposing (..)

import Css exposing (..)
import Css.Elements exposing (..)
import Style
import Style.Color as Color
import Style.Layout as Layout
import Style.Font as Font


css : Style.Config -> List Snippet
css cfg =
    List.concat
        [ layout
        , text cfg
        , colors cfg
        ]


layout : List Snippet
layout =
    [ everything
        [ margin zero
        , padding zero
        , boxSizing borderBox
        ]
    , Css.each [ html, body ] [ height <| pct 100 ]
    , body [ Layout.col ]
    ]


text : Style.Config -> List Snippet
text cfg =
    [ body [ Font.body cfg ]
    , each [ h1, h2, h3, h4, h5, h6 ] [ Font.head cfg ]
    , code [ Font.mono cfg ]
    , a [ textDecoration none ]
    ]


colors : Style.Config -> List Snippet
colors cfg =
    [ body [ Color.text cfg ]
    , a [ Color.brand1 cfg ]
    ]
