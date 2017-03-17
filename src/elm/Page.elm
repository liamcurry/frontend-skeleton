module Page exposing (..)

import Html exposing (Html)
import Model exposing (Model, Msg)
import Route
import Page.Home
import Page.About
import Page.Contact
import Page.Settings
import Page.Error404


view : Model -> Html Msg
view model =
    case model.route of
        Route.Home ->
            Page.Home.view model

        Route.About ->
            Page.About.view model

        Route.Contact ->
            Page.Contact.view model

        Route.Settings ->
            Page.Settings.view model

        _ ->
            Page.Error404.view model
