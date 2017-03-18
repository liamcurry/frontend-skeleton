port module Main exposing (..)

import Css.File
import Style
import Styles


port files : Css.File.CssFileStructure -> Cmd msg


main : Css.File.CssCompilerProgram
main =
    [ ( "elm.css"
      , Css.File.compile [ Styles.stylesheet Style.defaultConfig ]
      )
    ]
        |> Css.File.toFileStructure
        |> Css.File.compiler files
