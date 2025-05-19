module Web.HTML.Class.TagSymbol
  ( class TagSymbol
  , class TagSymbol'
  ) where

import Web.HTML

-- | A bijection between HTML tag names and
-- | their corresponding element types
-- | as declared in `web-html`.

class TagSymbol :: Symbol -> Type -> Constraint
class TagSymbol symbol elemType
  | symbol -> elemType
  , elemType -> symbol

-- | Like `TagSymbol`, but 
