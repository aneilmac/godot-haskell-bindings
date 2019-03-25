#ifdef _WIN32
#  define EXPORT __declspec( dllexport )
#else
#  define EXPORT
#endif

#include "HsFFI.h"
#include "HelloWorld_stub.h"

void EXPORT
godot_gdnative_init(void* p_options)
{
    hs_init(0, 0);
    haskell_godot_gdnative_init(p_options);
}

void EXPORT
godot_nativescript_init(void* p_handle)
{
    haskell_godot_nativescript_init(p_handle);
}

void EXPORT
godot_gdnative_terminate(void* p_options)
{
    haskell_godot_gdnative_terminate(p_options);
    hs_exit();
}
