module View exposing (linkTo, site)

import Html exposing (Html, Attribute)
import Html.Attributes as Attrs
import Html.Events as Events exposing (defaultOptions)
import Json.Decode as Decode
import Model exposing (Model, Msg(GoTo))
import Route exposing (Route)
import Style exposing (Class(..))


linkTo : Route -> Route -> List (Attribute Msg) -> List (Html Msg) -> Html Msg
linkTo fromRoute toRoute attrs =
    Html.a <|
        List.concat
            [ attrs
            , [ Attrs.href <| Route.print toRoute
              , Events.onWithOptions
                    "click"
                    { defaultOptions | preventDefault = True }
                    (Decode.succeed <| GoTo toRoute)
              , Style.classList
                    [ ( Style.Link, True )
                    , ( Style.Link_Active, fromRoute == toRoute )
                    ]
              ]
            ]


site : Model -> Html Msg -> Html Msg
site model innerHtml =
    Html.div
        [ Style.classes [ Col, Flex1 ] ]
        [ siteHeader model
        , siteBody model innerHtml
        , siteFooter model
        ]


siteHeader : Model -> Html Msg
siteHeader model =
    Html.header
        [ Style.classes [ Row, TextCenter ] ]
        [ siteLogo model
        , siteNav model
        ]


siteLogo : Model -> Html Msg
siteLogo model =
    linkTo model.route Route.Home [] [ Html.text "spa-skeleton" ]


siteNav : Model -> Html Msg
siteNav model =
    Html.nav
        [ Style.classes [ Flex1, Row, EqualChildren ] ]
        [ linkTo model.route Route.Home [] [ Html.text "Home" ]
        , linkTo model.route Route.About [] [ Html.text "About" ]
        , linkTo model.route Route.Contact [] [ Html.text "Contact" ]
        , linkTo model.route Route.Settings [] [ Html.text "Settings" ]
        ]


siteBody : Model -> Html Msg -> Html Msg
siteBody model innerHtml =
    Html.div [ Style.class Flex1 ]
        [ innerHtml ]


siteFooter : Model -> Html Msg
siteFooter model =
    Html.footer
        []
        [ Html.text "Footer" ]
