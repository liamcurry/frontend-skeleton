module I18n exposing (..)

import I18n.Id exposing (..)
import I18n.Lang exposing (..)
import I18n.Lang.En as En
import I18n.Lang.De as De
import I18n.Lang.Fr as Fr
import I18n.Lang.Ru as Ru
import I18n.Lang.Ze as Ze


trans : Lang -> Id -> String
trans lang id =
    case lang of
        En ->
            En.trans id

        De ->
            De.trans id

        Fr ->
            Fr.trans id

        Ru ->
            Ru.trans id

        Ze ->
            Ze.trans id


languages : List Lang
languages =
    [ En, De, Fr, Ru, Ze ]
