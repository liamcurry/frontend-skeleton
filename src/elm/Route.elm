module Route exposing (..)

import Navigation exposing (Location)
import UrlParser as Url exposing (..)


type Route
    = Home
    | About
    | Contact
    | Settings
    | Error404 (Maybe Location)


print : Route -> String
print route =
    case route of
        Home ->
            "/"

        About ->
            "/about"

        Contact ->
            "/contact"

        Settings ->
            "/settings"

        _ ->
            "/404"


parser : Location -> Parser (Route -> a) a
parser location =
    oneOf
        [ map Home (s "")
        , map About (s "about")
        , map Contact (s "contact")
        , map Settings (s "settings")
        ]


parse : Location -> Route
parse location =
    location
        |> Url.parsePath (parser location)
        |> Maybe.withDefault (Error404 <| Just location)
