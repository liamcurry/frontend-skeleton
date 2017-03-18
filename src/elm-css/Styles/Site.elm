module Styles.Site exposing (..)

import Css exposing (..)
import Style exposing (Class(..))
import Style.Layout as Layout
import Style.Font as Font
import Style.Text as Text
import Style.Spacing as Spacing


css : Style.Config -> List Snippet
css cfg =
    [ class Site [ Layout.flex 1, Layout.col ]
    , class SiteHeader [ Layout.row, Text.center, Font.bold ]
    , class SiteLogo [ Layout.flex 1, Spacing.padMdY cfg ]
    , class SiteNav [ Layout.flex 4, Layout.row ]
    , class SiteNavLink [ Layout.flex 1, Spacing.padMdY cfg ]
    , class SiteBody [ Layout.flex 1 ]
    ]
