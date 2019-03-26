module GDNative.Internal.ApiStructGen where

#include "gdnative_api_struct.gen.h"

{#enum GDNATIVE_API_TYPES as GDNativeAPITypes {underscoreToCase} deriving (Show, Eq) #}
