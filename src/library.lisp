(in-package :sdl2)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (cffi:define-foreign-library (libsdl2 :canary "SDL_IsTablet" :reload-on-restart nil)
    (:darwin (:or (:framework "SDL2") (:default "libSDL2")))
    (:unix (:or "libSDL2-2.0.so.0" "libSDL2.so.0.2" "libSDL2"))
    (:windows "SDL2.dll")
    (t (:default "libSDL2")))
  (cffi:load-foreign-library 'libsdl2))
