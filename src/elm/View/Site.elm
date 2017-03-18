module View.Site exposing (view)

import Html exposing (Html, Attribute)
import Model exposing (Model, Msg)
import Route exposing (Route)
import Style exposing (Class(..))
import View.Link as Link


view : Model -> Html Msg -> Html Msg
view model innerHtml =
    Html.div
        [ Style.class Site ]
        [ header model
        , body model innerHtml
        , footer model
        ]


header : Model -> Html Msg
header model =
    Html.header
        [ Style.class SiteHeader ]
        [ logo model
        , nav model
        ]


logo : Model -> Html Msg
logo model =
    Link.withClass SiteLogo model.route Route.Home [] [ Html.text "frontend-skeleton" ]


nav : Model -> Html Msg
nav model =
    Html.nav [ Style.class SiteNav ] <|
        List.map (\( route, label ) -> navLink model route label)
            [ ( Route.Home, "Home" )
            , ( Route.About, "About" )
            , ( Route.Contact, "Contact" )
            , ( Route.Settings, "Settings" )
            ]


navLink : Model -> Route -> String -> Html Msg
navLink model route label =
    Link.withClass SiteNavLink model.route route [] [ Html.text label ]


body : Model -> Html Msg -> Html Msg
body model innerHtml =
    Html.div [ Style.class SiteBody ]
        [ innerHtml ]


footer : Model -> Html Msg
footer model =
    Html.footer
        [ Style.class SiteFooter ]
        [ Html.text "Footer" ]
