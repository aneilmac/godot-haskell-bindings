module GDNative 
    ( godot_gdnative_init
    , godot_nativescript_init
    , godot_gdnative_terminate
    ) where

import Foreign.Ptr
import Foreign.ForeignPtr

import GDNative.Internal.ApiStructGen

godot_gdnative_init :: Ptr a -> IO ()
godot_gdnative_init _ = putStrLn "Init func"

godot_nativescript_init :: Ptr a -> IO ()
godot_nativescript_init _ = return ()

godot_gdnative_terminate :: Ptr a -> IO ()
godot_gdnative_terminate _ = return ()