module Style.Text exposing (..)

import Css exposing (..)
import Css.Elements exposing (..)
import Style exposing (Class(..))


css : List Snippet
css =
    [ class TextLeft [ textLeft ]
    , class TextCenter [ textCenter ]
    , class TextRight [ textRight ]
    , class TextUpper [ textUpper ]
    , class TextLower [ textLower ]
    , class TextNoSelect [ textNoSelect ]
    ]


textLeft : Mixin
textLeft =
    textAlign Css.left


textCenter : Mixin
textCenter =
    textAlign Css.center


textRight : Mixin
textRight =
    textAlign Css.right


textUpper : Mixin
textUpper =
    textTransform uppercase


textLower : Mixin
textLower =
    textTransform lowercase


textNoSelect : Mixin
textNoSelect =
    property "user-select" "none"
