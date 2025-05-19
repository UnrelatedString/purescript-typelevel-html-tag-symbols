module Web.HTML.Type.TagSymbol
  ( class SpecialTagSymbol
  --, class TagSymbol
  , SpecialTagSymbols
  --, TagSymbols
  ) where

import Prim.Row as Row
import Web.HTML
import Web.HTML.HTMLHtmlElement (HTMLHtmlElement)

-- | A class providing a sealed bijection between tag names and interface types.
class SpecialTagSymbol :: Symbol -> Type -> Constraint
class SpecialTagSymbol symbol elem

instance Row.Cons symbol elem r SpecialTagSymbols => SpecialTagSymbol symbol elem

-- | A mapping from tag names to
-- | the corresponding types which provide bindings to interfaces
-- | beyond the capabilities of a bare `HTMLElement`.

type SpecialTagSymbols :: Row Type
type SpecialTagSymbols =
  ( a :: HTMLAnchorElement
  , area :: HTMLAreaElement 
  , audio :: HTMLAudioElement 
  , br :: HTMLBRElement 
  , base :: HTMLBaseElement 
  , body :: HTMLBodyElement 
  , button :: HTMLButtonElement 
  , canvas :: HTMLCanvasElement 
  , dlist :: HTMLDListElement 
  , data :: HTMLDataElement 
  , datalist :: HTMLDataListElement 
  , div :: HTMLDivElement 
  , embed :: HTMLEmbedElement 
  , fieldset :: HTMLFieldSetElement 
  , form :: HTMLFormElement 
  , hr :: HTMLHRElement 
  , head :: HTMLHeadElement 
  , heading :: HTMLHeadingElement 
  , html :: HTMLHtmlElement 
  , iframe :: HTMLIFrameElement 
  , image :: HTMLImageElement 
  , input :: HTMLInputElement 
  , keygen :: HTMLKeygenElement 
  , li :: HTMLLIElement 
  , label :: HTMLLabelElement 
  , legend :: HTMLLegendElement 
  , link :: HTMLLinkElement 
  , map :: HTMLMapElement 
  , media :: HTMLMediaElement 
  , meta :: HTMLMetaElement 
  , meter :: HTMLMeterElement 
  , mod :: HTMLModElement 
  , olist :: HTMLOListElement 
  , object :: HTMLObjectElement 
  , optgroup :: HTMLOptGroupElement 
  , option :: HTMLOptionElement 
  , output :: HTMLOutputElement 
  , paragraph :: HTMLParagraphElement 
  , param :: HTMLParamElement 
  , pre :: HTMLPreElement 
  , progress :: HTMLProgressElement 
  , quote :: HTMLQuoteElement 
  , script :: HTMLScriptElement 
  , select :: HTMLSelectElement 
  , source :: HTMLSourceElement 
  , span :: HTMLSpanElement 
  , style :: HTMLStyleElement 
  , tablecaption :: HTMLTableCaptionElement 
  , tablecell :: HTMLTableCellElement 
  , tablecol :: HTMLTableColElement 
  , tabledatacell :: HTMLTableDataCellElement 
  , table :: HTMLTableElement 
  , tableheadercell :: HTMLTableHeaderCellElement 
  , tablerow :: HTMLTableRowElement 
  , tablesection :: HTMLTableSectionElement 
  , template :: HTMLTemplateElement 
  , textarea :: HTMLTextAreaElement 
  , time :: HTMLTimeElement 
  , title :: HTMLTitleElement 
  , track :: HTMLTrackElement 
  , ulist :: HTMLUListElement 
  , video :: HTMLVideoElement 
  )
