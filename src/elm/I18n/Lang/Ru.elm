module I18n.Lang.Ru exposing (..)

import I18n.Id exposing (..)


trans : Id -> String
trans id =
    case id of
        LangName ->
            "Pусский"

        Search ->
            "Поиск"

        Chart ->
            "Диаграмма"

        Api ->
            "API"

        About ->
            "Около"

        Contact ->
            "контакт"

        Settings ->
            "настройки"

        ImproveOurTranslations ->
            "Улучшить наши переводы"
