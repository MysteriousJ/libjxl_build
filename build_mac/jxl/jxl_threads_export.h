
#ifndef JXL_THREADS_EXPORT_H
#define JXL_THREADS_EXPORT_H


#  define JXL_THREADS_EXPORT
#  define JXL_THREADS_NO_EXPORT

#ifndef JXL_THREADS_DEPRECATED
#  define JXL_THREADS_DEPRECATED __attribute__((visibility("hidden")))
#endif

#ifndef JXL_THREADS_DEPRECATED_EXPORT
#  define JXL_THREADS_DEPRECATED_EXPORT JXL_THREADS_EXPORT JXL_THREADS_DEPRECATED
#endif

#ifndef JXL_THREADS_DEPRECATED_NO_EXPORT
#  define JXL_THREADS_DEPRECATED_NO_EXPORT JXL_THREADS_NO_EXPORT JXL_THREADS_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef JXL_THREADS_NO_DEPRECATED
#    define JXL_THREADS_NO_DEPRECATED
#  endif
#endif

#endif /* JXL_THREADS_EXPORT_H */