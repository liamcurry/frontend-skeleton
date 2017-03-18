module Style.Font
    exposing
        ( head
        , body
        , mono
        , xl
        , lg
        , md
        , sm
        , xs
        , bold
        )

import Css exposing (..)
import Style exposing (Config)


head : Config -> Mixin
head cfg =
    fontFamilies cfg.fontHead


body : Config -> Mixin
body cfg =
    fontFamilies cfg.fontBody


mono : Config -> Mixin
mono cfg =
    fontFamilies cfg.fontMono


xl : Config -> Mixin
xl cfg =
    fontSize <| px <| cfg.fontXl


lg : Config -> Mixin
lg cfg =
    fontSize <| px <| cfg.fontLg


md : Config -> Mixin
md cfg =
    fontSize <| px <| cfg.fontMd


sm : Config -> Mixin
sm cfg =
    fontSize <| px <| cfg.fontSm


xs : Config -> Mixin
xs cfg =
    fontSize <| px <| cfg.fontXs


bold : Mixin
bold =
    fontWeight <| int 600
