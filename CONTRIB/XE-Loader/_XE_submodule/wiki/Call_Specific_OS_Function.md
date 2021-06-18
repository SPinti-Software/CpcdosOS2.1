# How can I call OS specific function?

There is 3 main ways you can achieve this:

* Including it directly in the XE-Loader
* Extend XE-Loader with OS specific dynamic library
* Charge function manually


## Including it direcly in the XE-Loader

Probably the easiest way when you have access to the XE-Loader itself, because it's itself OS specific, just add your function as usual inside. Then when your app will request these functions, it will be linked to the appropriate one automatically.

## Extend XE-Loader with OS specific dynamic library

Sometimes you cannot modify the XE-Loader, like using a pre-installed version. This is very similar as the previous solution, but without modifying the code base. Instead we tell it to charge a custom dynamique library wrapper which uses standard OS libraries.

Because we probably don't have access to the OS library from an executable that is compiled on a different platform. We will use a dynamic lib compiled with the desired OS which can access its native libs.

Our wrapper will be compiled on target OS as usual. 





