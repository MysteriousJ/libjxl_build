
#ifndef JXL_EXPORT_H
#define JXL_EXPORT_H

#  define JXL_EXPORT
#  define JXL_NO_EXPORT

#  ifndef JXL_NO_EXPORT
#    define JXL_NO_EXPORT 
#  endif

#ifndef JXL_DEPRECATED
#  define JXL_DEPRECATED __attribute__((visibility("hidden")))
#endif

#ifndef JXL_DEPRECATED_EXPORT
#  define JXL_DEPRECATED_EXPORT JXL_EXPORT JXL_DEPRECATED
#endif

#ifndef JXL_DEPRECATED_NO_EXPORT
#  define JXL_DEPRECATED_NO_EXPORT JXL_NO_EXPORT JXL_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef JXL_NO_DEPRECATED
#    define JXL_NO_DEPRECATED
#  endif
#endif

#endif /* JXL_EXPORT_H */
