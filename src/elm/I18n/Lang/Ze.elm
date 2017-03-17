module I18n.Lang.Ze exposing (..)

import I18n.Id exposing (..)


trans : Id -> String
trans id =
    case id of
        LangName ->
            "中文"

        Search ->
            "搜索"

        Chart ->
            "图表"

        Api ->
            "API"

        About ->
            "关于"

        Contact ->
            "联系"

        Settings ->
            "设置"

        ImproveOurTranslations ->
            "改进我们的翻译"
