module Web.HTML.Type.TagSymbol
  ( class SpecialTagSymbol
  --, class TagSymbol
  , SpecialTagSymbols
  --, TagSymbols
  ) where

import Prim.Row as Row
import Web.HTML
import Web.HTML.HTMLHtmlElement (HTMLHtmlElement)

-- | A class providing a sealed mapping from tag names to interface types.
class SpecialTagSymbol :: Symbol -> Type -> Constraint
class SpecialTagSymbol symbol elem
  | symbol -> elem

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
  , dl :: HTMLDListElement 
  , data :: HTMLDataElement 
  , datalist :: HTMLDataListElement 
  , div :: HTMLDivElement 
  , embed :: HTMLEmbedElement 
  , fieldset :: HTMLFieldSetElement 
  , form :: HTMLFormElement 
  , hr :: HTMLHRElement 
  , head :: HTMLHeadElement 
  , h1 :: HTMLHeadingElement
  , h2 :: HTMLHeadingElement
  , h3 :: HTMLHeadingElement
  , h4 :: HTMLHeadingElement
  , h5 :: HTMLHeadingElement
  , h6 :: HTMLHeadingElement
  , html :: HTMLHtmlElement 
  , iframe :: HTMLIFrameElement 
  , image :: HTMLImageElement 
  , input :: HTMLInputElement 
  , keygen :: HTMLKeygenElement -- this isn't on MDN ;_;
  , li :: HTMLLIElement 
  , label :: HTMLLabelElement 
  , legend :: HTMLLegendElement 
  , link :: HTMLLinkElement 
  , map :: HTMLMapElement 
  , media :: HTMLMediaElement 
  , meta :: HTMLMetaElement 
  , meter :: HTMLMeterElement 
  , ins :: HTMLModElement 
  , del :: HTMLModElement
  , ol :: HTMLOListElement 
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
