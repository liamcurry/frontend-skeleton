port module Main exposing (..)

import Css.File
import Style.Config
import Stylesheet


port files : Css.File.CssFileStructure -> Cmd msg


main : Css.File.CssCompilerProgram
main =
    [ ( "elm.css"
      , Css.File.compile [ Stylesheet.stylesheet Style.Config.defaultConfig ]
      )
    ]
        |> Css.File.toFileStructure
        |> Css.File.compiler files
