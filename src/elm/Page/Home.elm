module Page.Home exposing (view)

import Html exposing (Html)
import Markdown
import Model exposing (Model, Msg(..))
import View.Site


view : Model -> Html Msg
view model =
    View.Site.view model <| Markdown.toHtml [] welcomeText


welcomeText : String
welcomeText =
    """# Welcome

This is the homepage of `liamcurry/frontend-skeleton`. This site is the basis
for many of my Elm projects.

Mail art dada sound art pop art art deco surrealism, action painting tachism avant-garde historicism aestheticism postmodern art, symbolism street art eclecticism pre-raphaelites. Stuckism international op art ottonian op art structuralism postmodernism neo-fauvism russian symbolism lowbrow, abstract expressionism eclecticism conceptual art renaissance jugendstil photorealism pop art. Multiculturalism cubo-futurism neo-geo op art neoclassicism expressionism de stijl photorealism, impressionism futurism cloisonnism mail art neoclassicism avant-garde, die brücke post-painterly abstraction cubism social realism symbolism fauvism. International gothic postmodern art pointilism relational art op art, postminimalism neo-minimalism divisionism international gothic, deformalism academic minimalism. Pointilism neo-expressionism tonalism cloisonnism, sound art futurism.

Installation art nonconformism barbizon school abstract expressionism mannerism ottonian avant-garde op art, conceptual art op art rayonism neo-expressionism primitivism young british artists. Synchromism baroque neoclassicism academic romanticism color field painting, carolingian suprematism multiculturalism young british artists humanism situationist international, new objectivity cubism tachism pointilism. Neo-dada biedermeier jugendstil neo-impressionism cubism, video art deformalism abstract expressionism lowbrow superstroke, aestheticism postmodernism mannerism. Post-minimalism new objectivity rayonism maximalism pop art luminism historicism jugendstil ottonian postminimalism, romanesque russian symbolism relational art die brücke tachism synchromism fluxus. Dadaism perspectivism bauhaus der blaue reiter, futurism gothic art symbolism immagine&poesia, precisionism monumentalism.

Op art systems art neoclassicism hard-edge painting immagine&poesia lowbrow art deco tachism, postminimalism lyrical abstraction realism socialist realism op art neo-expressionism. Nonconformism synchromism socialist realism synthetism neoclassicism symbolism, situationist international gothic art neo-fauvism installation art, suprematism dadaism lowbrow neo-minimalism. Russian symbolism art nouveau post-minimalism rayonism precisionism fluxus barbizon school mannerism, humanism existentialism superstroke pop art art deco. Purism op art caravaggisti video art intervention art photorealism, young british artists post-impressionism surrealism abstract expressionism neo-dada neoism, modern art cloisonnism installation art art deco. Nonconformism futurism metaphysical art hudson river school cobra, remodernism modern art russian symbolism photorealism superstroke, structuralism postminimalism russian symbolism.
"""
