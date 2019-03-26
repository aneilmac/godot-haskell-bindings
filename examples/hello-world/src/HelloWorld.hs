{-# LANGUAGE ForeignFunctionInterface #-}
module HelloWorld where

import GDNative

import Foreign.Ptr
import Foreign.ForeignPtr

foreign export ccall "haskell_godot_gdnative_init"
    godot_gdnative_init :: Ptr a -> IO ()

foreign export ccall "haskell_godot_nativescript_init"
    godot_nativescript_init :: Ptr a -> IO ()

foreign export ccall "haskell_godot_gdnative_terminate"
    godot_gdnative_terminate :: Ptr a -> IO ()
