module Styles exposing (snippets, stylesheet)

import Css
import Style
import Styles.Elements
import Styles.Site


snippets : Style.Config -> List Css.Snippet
snippets cfg =
    List.concat
        [ Styles.Elements.css cfg
        , Styles.Site.css cfg
        ]


stylesheet : Style.Config -> Css.Stylesheet
stylesheet =
    Css.stylesheet << snippets
