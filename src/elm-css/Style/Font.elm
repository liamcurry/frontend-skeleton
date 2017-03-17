module Style.Font exposing (..)

import Css exposing (..)
import Css.Elements exposing (..)
import Style exposing (Class(..))
import Style.Config exposing (Config)


css : Config -> List Snippet
css cfg =
    [ body [ fontBody cfg ]
    , each [ h1, h2, h3, h4, h5, h6 ] [ fontHead cfg ]
    , code [ fontMono cfg ]
    , class FontHead [ fontHead cfg ]
    , class FontBody [ fontBody cfg ]
    , class FontMono [ fontMono cfg ]
    , class FontXl [ fontXl cfg ]
    , class FontLg [ fontXl cfg ]
    , class FontMd [ fontXl cfg ]
    , class FontSm [ fontXl cfg ]
    , class FontXs [ fontXl cfg ]
    ]


fontHead : Config -> Mixin
fontHead cfg =
    fontFamilies cfg.fontHead


fontBody : Config -> Mixin
fontBody cfg =
    fontFamilies cfg.fontBody


fontMono : Config -> Mixin
fontMono cfg =
    fontFamilies cfg.fontMono


fontXl : Config -> Mixin
fontXl cfg =
    fontSize <| px <| cfg.fontSize * 1.5


fontLg : Config -> Mixin
fontLg cfg =
    fontSize <| px <| cfg.fontSize * 1.25


fontMd : Config -> Mixin
fontMd cfg =
    fontSize <| px <| cfg.fontSize * 1


fontSm : Config -> Mixin
fontSm cfg =
    fontSize <| px <| cfg.fontSize * 0.75


fontXs : Config -> Mixin
fontXs cfg =
    fontSize <| px <| cfg.fontSize * 0.5
