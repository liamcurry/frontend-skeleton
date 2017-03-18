module View.Link exposing (to, withClass, withClasses)

import Html exposing (Html, Attribute)
import Html.Attributes as Attrs
import Html.Events as Events exposing (defaultOptions)
import Json.Decode as Decode
import Model exposing (Model, Msg(GoTo))
import Route exposing (Route)
import Style exposing (Class(..))


to : Route -> Route -> List (Attribute Msg) -> List (Html Msg) -> Html Msg
to =
    withClasses []


withClass : Class -> Route -> Route -> List (Attribute Msg) -> List (Html Msg) -> Html Msg
withClass cls =
    withClasses <| List.singleton cls


withClasses : List Class -> Route -> Route -> List (Attribute Msg) -> List (Html Msg) -> Html Msg
withClasses classes fromRoute toRoute attrs =
    let
        allClasses =
            List.concat
                [ List.map (\cls -> ( cls, True )) classes
                , [ ( Style.Link, True )
                  , ( Style.Link_Active, fromRoute == toRoute )
                  ]
                ]

        allAttrs =
            List.concat
                [ attrs
                , [ Attrs.href <| Route.print toRoute
                  , Events.onWithOptions
                        "click"
                        { defaultOptions | preventDefault = True }
                        (Decode.succeed <| GoTo toRoute)
                  , Style.classList allClasses
                  ]
                ]
    in
        Html.a allAttrs
