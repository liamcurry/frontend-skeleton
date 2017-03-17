module Json.Encode.Extra exposing (..)

import Date exposing (Date)
import Date.Format as Date
import Dict exposing (Dict)
import Json.Encode as E


maybe : (a -> E.Value) -> Maybe a -> E.Value
maybe toValue maybe =
    case maybe of
        Just x ->
            toValue x

        Nothing ->
            E.null


date : Date -> E.Value
date d =
    d
        |> Date.formatISO8601
        |> E.string


list : (a -> E.Value) -> List a -> E.Value
list encoder l =
    l
        |> List.map encoder
        |> E.list


dict : (a -> E.Value) -> Dict String a -> E.Value
dict toValue d =
    d
        |> Dict.toList
        |> List.map (\( k, v ) -> ( k, toValue v ))
        |> E.object
