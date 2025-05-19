module Main where

import Prelude

import Effect (Effect)
import Halogen as H
import Halogen.Aff (runHalogenAff, awaitBody)
import Halogen.HTML as HTML
import Halogen.VDom.Driver (runUI)

main :: Effect Unit
main = runHalogenAff do
  body <- awaitBody
  runUI rootComponent unit body

-- this is all literally just constant static HTML. I just "like" Halogen

rootComponent
  :: forall query input output m.
  H.Component query input output m
rootComponent = H.mkComponent
  { initialState: const unit
  , render
  , eval: H.mkEval H.defaultEval
  }
  where

  render
    :: forall state action
    . state
    -> H.ComponentHTML action () m
  render _ = HTML.div_
    [ HTML.h1_ [HTML.text "pain."]
    ]
