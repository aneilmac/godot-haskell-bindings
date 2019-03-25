module GDNative.Internal.Init where
    
import Foreign.Ptr
import Foreign.ForeignPtr

godot_gdnative_init :: Ptr a -> IO ()
godot_gdnative_init _ = return ()

godot_nativescript_init :: Ptr a -> IO ()
godot_nativescript_init _ = return ()

godot_gdnative_terminate :: Ptr a -> IO ()
godot_gdnative_terminate _ = return ()

foreign export ccall "_hswrap_gdnative_init" godot_gdnative_init :: Ptr a -> IO ()
foreign export ccall "_hswrap_nativescript_init" godot_nativescript_init :: Ptr a -> IO ()
foreign export ccall "_hswrap_gdnative_terminate" godot_gdnative_terminate :: Ptr a -> IO ()
