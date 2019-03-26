module GDNative.Internal.Core.Vector3 
    ( Vector3Axis (..)
    , Vector3
    , Vector3Ptr
    ) where

#include "gdnative/vector3.h"

import Data.Word (Word32)
import Foreign.Storable
import Foreign.Ptr
import Foreign.Marshal.Alloc (alloca)
import Foreign.C.Types
{#import GDNative.Internal.Core.GDNative#} 

data Vector3 = Vector3 Word32 Word32 Word32

instance Storable Vector3 where
    sizeOf _ = {# const GODOT_VECTOR3_SIZE #}
    alignment _ = {# alignof godot_vector3 #}
    peek a = do
        let p = castPtr a :: Ptr Word32
        a <- peekElemOff p 0
        b <- peekElemOff p 1
        c <- peekElemOff p 2
        return $ Vector3 a b c

    poke p  (Vector3 a b c) = do
        let p' = castPtr  p :: Ptr Word32
        pokeElemOff p' 0 a
        pokeElemOff p' 1 b
        pokeElemOff p' 2 c

{#pointer *godot_vector3 as Vector3Ptr -> Vector3 #}

{#enum godot_vector3_axis as Vector3Axis {underscoreToCase} deriving (Show, Eq) #}

{#fun godot_vector3_new as ^ { alloca- `Vector3' peek*, `CFloat', `CFloat', `CFloat'} -> `()' #}