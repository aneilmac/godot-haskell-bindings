module GDNative.Internal.Core.GDNative 
    ( Error (..)
    ) where

#include "gdnative/gdnative.h"

{#enum godot_error as Error {underscoreToCase} deriving (Show, Eq) #}

{#typedef godot_bool CBool #}
{#typedef godot_int CInt #}
{#typedef godot_real CFloat #}