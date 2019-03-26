module GDNative.Internal.Core.RID 
  ( RID
  , godotRIDNew
  , godotRIDGetID
  ) where

#include "gdnative/rid.h"

import Foreign.Storable
import Foreign.Ptr
import Foreign.Marshal.Alloc (alloca)
import Foreign.Marshal.Utils (with)
import Foreign.C.Types (CInt, CIntPtr)

newtype RID = RID CIntPtr

instance Storable RID where
  sizeOf _ = {# sizeof godot_rid #}
  alignment _ = {# alignof godot_rid #}

  peek a = do
      let p = castPtr a :: Ptr CIntPtr
      a <- peek p
      return $ RID a

  poke p (RID a) = do
      let p' = castPtr  p :: Ptr CIntPtr
      poke p' a

{#pointer *godot_rid as RIDPtr -> RID #}

{#fun godot_rid_new as godotRIDNew { alloca- `RID' peek* } -> `()' #}

{#fun godot_rid_get_id as godotRIDGetID {with* `RID'} -> `CInt' #}