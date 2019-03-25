{-# LANGUAGE ForeignFunctionInterface #-}
module HelloWorld where

import Foreign.Ptr
import Foreign.ForeignPtr

godot_gdnative_init :: Ptr a -> IO ()
godot_gdnative_init _ = do
    putStrLn "Hello world"

godot_nativescript_init :: Ptr a -> IO ()
godot_nativescript_init _ = return ()

godot_gdnative_terminate :: Ptr a -> IO ()
godot_gdnative_terminate _ = return ()

foreign export ccall "haskell_godot_gdnative_init" godot_gdnative_init :: Ptr a -> IO ()
foreign export ccall "haskell_godot_nativescript_init" godot_nativescript_init :: Ptr a -> IO ()
foreign export ccall "haskell_godot_gdnative_terminate" godot_gdnative_terminate :: Ptr a -> IO ()
