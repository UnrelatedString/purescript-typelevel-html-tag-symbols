module Web.HTML.Tag
  ( HTMLTag
  , class TagImplements
  ) where

--import Prim.Row as Row
import Web.HTML
import Web.HTML.HTMLHtmlElement (HTMLHtmlElement)

-- come to think of it this should also just...

foreign import data HTMLTag :: Symbol -> Type

-- and then have class stuff for the interfaces from that lmaoooooooooo

class TagImplements :: Symbol -> Type -> Constraint
class TagImplements symbol interface

-- and NO FUNDEP because like hey something totally could implement multiple interfaces
-- plus users can like. define new foreign interfaces for shared functionality etc.
