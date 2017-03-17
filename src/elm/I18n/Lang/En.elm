module I18n.Lang.En exposing (..)

import I18n.Id exposing (..)


trans : Id -> String
trans id =
    case id of
        LangName ->
            "English"

        Search ->
            "Search"

        Chart ->
            "Chart"

        Api ->
            "API"

        About ->
            "About"

        Contact ->
            "Contact"

        Settings ->
            "Settings"

        ImproveOurTranslations ->
            "Improve our translations"
