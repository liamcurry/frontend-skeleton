module Style
    exposing
        ( Class(..)
        , class
        , classes
        , classList
        )

import Html exposing (Attribute)
import Html.Attributes as Html


type Class
    = -- Layout
      Row
    | RowReverse
    | Col
    | ColReverse
    | EqualChildren
    | Flex1
    | Flex2
    | Flex3
    | Flex4
    | Flex5
    | Flex6
    | Flex7
    | Flex8
    | Flex9
    | Flex10
    | Flex11
    | Flex12
    | AlignCenter
    | JustifyCenter
    | JustifyBetween
      -- Spacing
    | Pad
    | PadX
    | PadY
    | Space
    | SpaceX
    | SpaceY
      -- Colors
    | Muted
      -- Font families/size
    | FontHead
    | FontBody
    | FontMono
    | FontXl
    | FontLg
    | FontMd
    | FontSm
    | FontXs
      -- Text
    | TextLeft
    | TextCenter
    | TextRight
    | TextUpper
    | TextLower
    | TextNoSelect
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
