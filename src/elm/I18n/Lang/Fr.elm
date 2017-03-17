module I18n.Lang.Fr exposing (..)

import I18n.Id exposing (..)


trans : Id -> String
trans id =
    case id of
        LangName ->
            "Français"

        Search ->
            "Chercher"

        Chart ->
            "Graphique"

        Api ->
            "API"

        About ->
            "Sur"

        Contact ->
            "Contact"

        Settings ->
            "Paramètres"

        ImproveOurTranslations ->
            "Améliorer nos traductions"
