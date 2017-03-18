module Style
    exposing
        ( Class(..)
        , class
        , classes
        , classList
        , Config
        , defaultConfig
        )

import Color exposing (Color)
import Html exposing (Attribute)
import Html.Attributes as Html


type ScreenSize
    = Desktop
    | TabletLandscape
    | TabletPortrait
    | PhoneLandscape
    | PhonePortrait


type Class
    = -- Site
      Site
    | SiteHeader
    | SiteLogo
    | SiteNav
    | SiteNavLink
    | SiteBody
    | SiteFooter
      -- Pages
    | Page_Home
    | Page_About
    | Page_Contact
    | Page_Settings
      -- Elements
    | Link
    | Link_Active


class : Class -> Attribute msg
class cls =
    Html.class <| toString cls


classList : List ( Class, Bool ) -> Attribute msg
classList =
    Html.classList << List.map (\( c, b ) -> ( toString c, b ))


classes : List Class -> Attribute msg
classes =
    classList << List.map (\c -> ( c, True ))


type alias Config =
    { spacingLg : Float
    , spacingMd : Float
    , spacingSm : Float
    , fontHead : List String
    , fontBody : List String
    , fontMono : List String
    , fontXl : Float
    , fontLg : Float
    , fontMd : Float
    , fontSm : Float
    , fontXs : Float
    , colorText : Color
    , colorBackground : Color
    , colorBrand1 : Color
    , colorBrand2 : Color
    , colorSuccess : Color
    , colorInfo : Color
    , colorWarning : Color
    , colorDanger : Color
    , mutedAlpha : Float
    , sidebarWidth : Float
    }


defaultConfig : Config
defaultConfig =
    { spacingLg = 20
    , spacingMd = 10
    , spacingSm = 5
    , fontHead = [ "Hind", "sans-serif" ]
    , fontBody = [ "Hind", "sans-serif" ]
    , fontMono = [ "Cutive Mono", "monospace" ]
    , fontXl = 24
    , fontLg = 18
    , fontMd = 14
    , fontSm = 10
    , fontXs = 8
    , colorText = Color.rgb 70 70 70
    , colorBackground = Color.rgb 255 255 255
    , colorBrand1 = Color.rgb 41 121 255
    , colorBrand2 = Color.rgb 255 152 0
    , colorSuccess = Color.rgb 79 139 7
    , colorInfo = Color.rgb 255 235 59
    , colorWarning = Color.rgb 255 152 0
    , colorDanger = Color.rgb 255 87 34
    , mutedAlpha = 0.7
    , sidebarWidth = 300
    }
