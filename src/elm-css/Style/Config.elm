module Style.Config exposing (Config, defaultConfig)

import Color


type alias Config =
    { spacerY : Float
    , spacerX : Float
    , fontSize : Float
    , fontHead : List String
    , fontBody : List String
    , fontMono : List String
    , colorRed : Color.Color
    , colorGreen : Color.Color
    , colorDark : Color.Color
    , colorLight : Color.Color
    , mutedAlpha : Float
    , sidebarWidth : Float
    }


defaultConfig : Config
defaultConfig =
    { spacerY = 10
    , spacerX = 10
    , fontSize = 14
    , fontHead = [ "sans-serif" ]
    , fontBody = [ "sans-serif" ]
    , fontMono = [ "Cutive Mono", "monospace" ]
    , colorRed = Color.rgb 233 43 14
    , colorGreen = Color.rgb 79 139 7
    , colorDark = Color.rgb 59 71 84
    , colorLight = Color.rgb 255 255 255
    , mutedAlpha = 0.7
    , sidebarWidth = 300
    }
