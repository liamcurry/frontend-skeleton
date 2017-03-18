module Style.Spacing
    exposing
        ( pad
        , padX
        , padY
        , padLg
        , padLgX
        , padLgY
        , padMd
        , padMdX
        , padMdY
        , padSm
        , padSmX
        , padSmY
        , space
        , spaceX
        , spaceY
        , spaceLg
        , spaceLgX
        , spaceLgY
        , spaceMd
        , spaceMdX
        , spaceMdY
        , spaceSm
        , spaceSmX
        , spaceSmY
        )

import Css exposing (Mixin, mixin)
import Style exposing (Config)


pad : Float -> Mixin
pad amount =
    mixin [ Css.padding <| Css.px amount ]


padX : Float -> Mixin
padX amount =
    mixin
        [ Css.paddingLeft <| Css.px amount
        , Css.paddingRight <| Css.px amount
        ]


padY : Float -> Mixin
padY amount =
    mixin
        [ Css.paddingTop <| Css.px amount
        , Css.paddingBottom <| Css.px amount
        ]


padLg : Config -> Mixin
padLg cfg =
    pad cfg.spacingLg


padLgX : Config -> Mixin
padLgX cfg =
    padX cfg.spacingLg


padLgY : Config -> Mixin
padLgY cfg =
    padY cfg.spacingLg


padMd : Config -> Mixin
padMd cfg =
    pad cfg.spacingMd


padMdX : Config -> Mixin
padMdX cfg =
    padX cfg.spacingMd


padMdY : Config -> Mixin
padMdY cfg =
    padY cfg.spacingMd


padSm : Config -> Mixin
padSm cfg =
    pad cfg.spacingSm


padSmX : Config -> Mixin
padSmX cfg =
    padX cfg.spacingSm


padSmY : Config -> Mixin
padSmY cfg =
    padY cfg.spacingSm


space : Float -> Mixin
space amount =
    mixin [ Css.margin <| Css.px amount ]


spaceX : Float -> Mixin
spaceX amount =
    mixin
        [ Css.marginLeft <| Css.px amount
        , Css.marginRight <| Css.px amount
        ]


spaceY : Float -> Mixin
spaceY amount =
    mixin
        [ Css.marginTop <| Css.px amount
        , Css.marginBottom <| Css.px amount
        ]


spaceLg : Config -> Mixin
spaceLg cfg =
    space cfg.spacingLg


spaceLgX : Config -> Mixin
spaceLgX cfg =
    spaceX cfg.spacingLg


spaceLgY : Config -> Mixin
spaceLgY cfg =
    spaceY cfg.spacingLg


spaceMd : Config -> Mixin
spaceMd cfg =
    space cfg.spacingMd


spaceMdX : Config -> Mixin
spaceMdX cfg =
    spaceX cfg.spacingMd


spaceMdY : Config -> Mixin
spaceMdY cfg =
    spaceY cfg.spacingMd


spaceSm : Config -> Mixin
spaceSm cfg =
    space cfg.spacingSm


spaceSmX : Config -> Mixin
spaceSmX cfg =
    spaceX cfg.spacingSm


spaceSmY : Config -> Mixin
spaceSmY cfg =
    spaceY cfg.spacingSm
