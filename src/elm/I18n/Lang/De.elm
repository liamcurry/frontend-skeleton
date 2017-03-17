module I18n.Lang.De exposing (..)

import I18n.Id exposing (..)


trans : Id -> String
trans id =
    case id of
        LangName ->
            "Deutsche"

        Search ->
            "Suche"

        Chart ->
            "Diagramm"

        Api ->
            "API"

        About ->
            "Etwa"

        Contact ->
            "Kontakt"

        Settings ->
            "Einstellungen"

        ImproveOurTranslations ->
            "Verbessern Sie unsere Übersetzungen"
